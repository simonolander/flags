module Main exposing (..)

import Browser
import Country exposing (Country, countries, flagImage)
import Element exposing (column, image, layout, padding, px, width)
import Html exposing (Html)
import List.Nonempty as Nonempty


---- MODEL ----


type alias Model =
    { country: Country}

type alias InitArgs =
    { countryIndex : Int
    }


init : InitArgs -> ( Model, Cmd Msg )
init args =
    let
        country = Nonempty.get args.countryIndex countries
    in
    ( {country = country}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    layout [] <|
        column
            [padding 20]
            [ image
                [width (px 100)]
                { src = flagImage model.country,
                 description = "A flag of a country you're supposed to guess"}
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
