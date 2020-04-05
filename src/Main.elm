module Main exposing (InitArgs, Model, Msg(..), init, main, update, view)

import Browser
import Country exposing (Country, countries, defaultCountry, flagImage)
import Element exposing (centerX, column, el, fill, height, image, layout, maximum, padding, paragraph, rgb, rgb255, shrink, spacing, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font exposing (color)
import Element.Input exposing (button, labelAbove, option, radio)
import Html exposing (Html)
import List.Selection as Selection exposing (Selection)
import Maybe.Extra
import Random exposing (Generator)
import Random.List



---- MODEL ----


type alias Model =
    { question : Maybe Question
    , answer : Maybe Country
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
            ( { model
                | answer =
                    model.question
                        |> Maybe.map .selection
                        |> Maybe.andThen Selection.selected
              }
            , Cmd.none
            )

        ClickedNewGame ->
            ( { model | question = Nothing }, Random.generate GeneratedQuestion questionGenerator )

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
                selection
                    |> Random.uniform defaultCountry
                    |> Random.map (Tuple.pair selection)
            )
        |> Random.map
            (\( selection, country ) ->
                { correct = country
                , selection = Selection.fromList selection
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
            , Border.rounded 10
            , Background.color <| rgb255 255 255 255
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
                    , Background.color (rgb255 245 245 245)
                    , height fill
                    ]
                    [ el [ centerX, Font.size 42, padding 20 ] (text "Vexillology")
                    , viewFlag question.correct
                    , case model.answer of
                        Just answer ->
                            column [ spacing 20 ]
                                [ if answer == question.correct then
                                    paragraph []
                                        [ text answer.name
                                        , text " is "
                                        , el [ color <| rgb255 0 128 0 ] <| text "correct"
                                        , text "!"
                                        ]

                                  else
                                    paragraph []
                                        [ text answer.name
                                        , text " is "
                                        , el [ color <| rgb255 255 0 0 ] <| text "incorrect"
                                        , text "! "
                                        , text "The correct answer was "
                                        , el [ Font.bold ] <| text question.correct.name
                                        , text "."
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
                                , centerX
                                ]
                                [ radio [ spacing 10 ]
                                    { onChange = SelectCountry
                                    , options =
                                        question.selection
                                            |> Selection.map (\country -> option country (paragraph [ Font.alignLeft ] [ text country.name ]))
                                            |> Selection.toList
                                    , selected =
                                        Selection.selected question.selection
                                    , label =
                                        labelAbove [ padding 20 ] <|
                                            text "Which country has this flag? "
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
