module Objecten where

type Dict k v	= k -> Maybe v

empty	:: k -> Maybe v
empty k	= Nothing

singleton	:: (Eq k) => k -> v -> k -> Maybe v
singleton k v k'
		= if k == k' then Just v else Nothing

insert	:: (Eq k) => k -> v -> (k -> Maybe v) -> (k -> Maybe v)
insert k v dict
	= \lookup -> if lookup == k then Just v else
				dict lookup
