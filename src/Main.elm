import Browser
import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)
import Dict exposing (Dict)

main =
  Browser.sandbox { init = init, update = update, view = view }


-- MODEL

-- type alias Model = {
--  links : List String
-- }

type alias Model =
  { links : Dict String String,
    profile: Dict String String
  }

init : Model
init = {
        links = Dict.fromList[
          ("IDAOSE Jaipur","http://www.idaosejaipur.com")
        , ("Trading Application","https://damp-oasis-64949.herokuapp.com/")
        , ("Angular Httpshooter","https://www.npmjs.com/package/angular-httpshooter")
        , ("CSS Media All","https://www.npmjs.com/package/css-media-all")
        , ("Ballgame","https://siddarthvader.github.io/ballgame/")
        , ("Fee Management System","https://github.com/siddarthvader/sms/tree/master")
        , ("Sports Fest Site","https://github.com/siddarthvader/mst/tree/master")
          ],
        profile = Dict.fromList[
           ("src/img/github-logo.png","https://github.com/siddarthvader")
        , ("src/img/stack-logo.png","http://stackoverflow.com/users/2439835/siddharth")
        , ("src/img/upwork-logo.png","https://www.upwork.com/freelancers/~016fec88e43102b929?viewMode=1")
        , ("src/img/npm-logo.png", "https://www.npmjs.com/~siddarthvader")
          ]
        }
-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model= model

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
      , renderLinks model.links
      , renderSideFooter model.profile
      
    ],
    div[ class "content item"] [ text "main content3"]
    ]

renderLinks: Dict String String -> Html msg
renderLinks lst =
      let link (key,value)= 
           a[ href value, target "_blank"][text key]
      in div[class "sidenav-links"]
              (lst
                  |> Dict.toList
                  |> List.map link
              )

renderSideFooter: Dict String String -> Html msg
renderSideFooter lst =
      let link (key,value) = 
            a [ href value, class "sidenav-footer-item" ]
              [ img [ src key ]
                  []
              ]
      in div[class "sidenav-footer"]
              (lst
                  |> Dict.toList
                  |> List.map link
              )
          