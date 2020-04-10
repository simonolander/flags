module Main exposing (InitArgs, Model, Msg(..), init, main, update, view)

import Browser
import Country exposing (Country, countries, defaultCountry, flagImage, similarFlags)
import Element exposing (alignBottom, centerX, column, el, fill, height, htmlAttribute, image, layout, link, maximum, mouseOver, padding, paragraph, rgb255, rgba255, shrink, spacing, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input exposing (button, labelAbove, option, radio)
import Html exposing (Html)
import Html.Attributes exposing (class, style)
import List.Selection as Selection exposing (Selection)
import Maybe.Extra
import Random exposing (Generator)
import Random.List
import Version exposing (version)



---- MODEL ----


type alias Model =
    { question : Maybe Question
    , answer : Maybe Country
    , correctAnswers : Int
    , totalAnswers : Int
    }


type alias Question =
    { correct : Country
    , selection : Selection Country
    }


type alias InitArgs =
    { countryIndex : Int
    }


init : InitArgs -> ( Model, Cmd Msg )
init _ =
    ( { question = Nothing
      , answer = Nothing
      , correctAnswers = 0
      , totalAnswers = 0
      }
    , Random.generate GeneratedQuestion questionGenerator
    )



---- UPDATE ----


type Msg
    = SelectCountry Country
    | ClickedAnswer
    | ClickedNewGame
    | GeneratedQuestion Question


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SelectCountry country ->
            case model.question of
                Just question ->
                    ( { model | question = Just { question | selection = Selection.select country question.selection } }
                    , Cmd.none
                    )

                Nothing ->
                    ( model, Cmd.none )

        ClickedAnswer ->
            case model.question of
                Just question ->
                    case Selection.selected question.selection of
                        Just selected ->
                            ( { model
                                | answer = Just selected
                                , correctAnswers =
                                    if question.correct == selected then
                                        model.correctAnswers + 1

                                    else
                                        model.correctAnswers
                                , totalAnswers =
                                    model.totalAnswers + 1
                              }
                            , Cmd.none
                            )

                        Nothing ->
                            ( model, Cmd.none )

                Nothing ->
                    ( model, Cmd.none )

        ClickedNewGame ->
            ( { model
                | question = Nothing
              }
            , Random.generate GeneratedQuestion questionGenerator
            )

        GeneratedQuestion question ->
            ( { model
                | question = Just question
                , answer = Nothing
              }
            , Cmd.none
            )


questionGenerator : Generator Question
questionGenerator =
    countries
        |> Random.List.shuffle
        |> Random.map (List.take 4)
        |> Random.andThen
            (\selection ->
                let
                    default =
                        List.head selection
                            |> Maybe.withDefault defaultCountry
                in
                selection
                    |> Random.uniform default
                    |> Random.map (Tuple.pair selection)
            )
        |> Random.map
            (\( selection, country ) ->
                { correct = country
                , selection =
                    selection
                        |> List.filter
                            (\c ->
                                similarFlags country
                                    |> List.member c
                                    |> not
                            )
                        |> Selection.fromList
                }
            )



---- VIEW ----


view : Model -> Html Msg
view model =
    let
        viewFlag country =
            image
                [ width fill
                , height <| maximum 400 shrink
                ]
                { src = flagImage country
                , description = "A flag of a country you're supposed to guess"
                }

        buttonAttributes =
            [ width fill
            , Border.width 1
            , padding 20
            , Border.rounded 5
            , Background.color <| rgb255 255 255 255
            , mouseOver
                [ Background.color <| rgb255 220 220 220 ]
            ]
    in
    layout [] <|
        case model.question of
            Nothing ->
                text "loading"

            Just question ->
                column
                    [ padding 40
                    , centerX
                    , spacing 20
                    , width (maximum 800 fill)
                    , Background.color (rgba255 245 245 245 0.95)
                    , height fill
                    ]
                    [ paragraph
                        [ centerX
                        , Font.size 42
                        , padding 20
                        , Font.variant Font.smallCaps
                        ]
                        [ text "Two hundred nations" ]
                    , viewFlag question.correct
                    , case model.answer of
                        Just answer ->
                            column
                                [ spacing 20
                                , centerX
                                , width fill
                                ]
                                [ if answer == question.correct then
                                    column
                                        [ padding 20
                                        , spacing 20
                                        , centerX
                                        ]
                                    <|
                                        [ el
                                            [ centerX
                                            , Font.size 30
                                            , Font.color <| rgb255 0 128 0
                                            , Font.variant Font.smallCaps
                                            ]
                                          <|
                                            text "Correct"
                                        , paragraph []
                                            [ text "This is the flag of "
                                            , el [ Font.bold ] <| text answer.name
                                            , text "."
                                            ]
                                        ]

                                  else
                                    column
                                        [ padding 20
                                        , spacing 20
                                        , centerX
                                        ]
                                    <|
                                        [ el
                                            [ centerX
                                            , Font.size 30
                                            , Font.color <| rgb255 200 0 0
                                            , Font.variant Font.smallCaps
                                            ]
                                          <|
                                            text "Incorrect"
                                        , paragraph []
                                            [ text "You answered "
                                            , el [ Font.bold ] <| text answer.name
                                            , text ", but this is the flag of "
                                            , el [ Font.bold ] <| text question.correct.name
                                            , text "."
                                            ]
                                        ]
                                , button
                                    buttonAttributes
                                    { onPress = Just ClickedNewGame
                                    , label = text "Next flag"
                                    }
                                ]

                        Nothing ->
                            column
                                [ spacing 20
                                , width fill
                                ]
                                [ radio
                                    [ spacing 10
                                    , centerX
                                    ]
                                    { onChange = SelectCountry
                                    , options =
                                        question.selection
                                            |> Selection.map (\country -> option country (paragraph [ Font.alignLeft ] [ text country.name ]))
                                            |> Selection.toList
                                    , selected =
                                        Selection.selected question.selection
                                    , label =
                                        labelAbove [ centerX, padding 20 ] <|
                                            paragraph [] [ text "Which country has this flag?" ]
                                    }
                                , button
                                    buttonAttributes
                                    { onPress =
                                        if
                                            Selection.selected question.selection
                                                |> Maybe.Extra.isJust
                                        then
                                            Just ClickedAnswer

                                        else
                                            Nothing
                                    , label = text "Answer"
                                    }
                                ]
                    , el
                        [ centerX
                        ]
                      <|
                        text <|
                            String.concat
                                [ String.fromInt model.correctAnswers
                                , " / "
                                , String.fromInt model.totalAnswers
                                ]
                    , link
                        [ htmlAttribute <| class "version"
                        ]
                        { url = "https://github.com/simonolander/flags"
                        , label = text version
                        }
                    ]



---- PROGRAM ----


main : Program InitArgs Model Msg
main =
    Browser.element
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
