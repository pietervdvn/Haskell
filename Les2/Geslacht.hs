module Geslacht where

{--
Deze module geeft een voorbeeld van hoe het moet.
--}

-- Hier komen je imports. List doet niet veel, want het is al met de prelude mee geimporteerd
import Data.List

-- De datastructuur die een gesclacht voorstelt.
-- Merk op: de datastructuur hoeft niet dezelfde naam te hebben als de module
data Gesl	= Man | Vrouw
	deriving (Show)	-- deriving (Show) is nodig om af te printen


anderGeslacht		:: Gesl -> Gesl
anderGeslacht Man	= Vrouw
anderGeslacht Vrouw	= Man


zelfdeGesl		:: Gesl -> Gesl -> Bool
zelfdeGesl Man Man	= True
zelfdeGesl Vrouw Vrouw	= True
zelfdeGesl _ _		= False
