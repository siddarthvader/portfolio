import Browser
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)


main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model = Int

init : Model
init =
  0



-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1


-- VIEW

view : Model -> Html Msg
view model =
  div [class "container"]
    [ div [ class "header item"][
      div[class "header-name"][text "SIDDHARTH"],
      div [class "header-menu"] [
        div [class "header-menu-item"][
          text "About"
        ],
        div [class "header-menu-item"][
          text "Work"
        ],
        div [class "header-menu-item"][
          text "Contact"
        ],
        div [class "header-menu-item"][
          text "Random"
        ]
      ]
    ],
      div [class "sidenav item"][
        div [ class "sidenav-text"][ text "Full stack developer, Free agent."]
    ],
    div[ class "content item"] [ text "main content3"]
    ]