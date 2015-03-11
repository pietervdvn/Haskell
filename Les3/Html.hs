
module Html where

-- Simple (X)HTML markup.
data Attr = Attr String String
  deriving (Eq,Show)

data HtmlElement 
  = HtmlString String                    -- Plain text.
  | HtmlTag String [Attr] HtmlElements   -- Structured markup.
  deriving (Eq, Show)

type HtmlElements = [HtmlElement]

example :: HtmlElement
example =
  HtmlTag "a" [Attr "href" "http://www.ugent.be/"]
    [HtmlString "Universiteit Gent"]

-- HTML renderable class.
class HTML a where
  toHtml :: a -> HtmlElement

-- Link datatype
data Link = Link String String
  deriving (Eq,Show)
