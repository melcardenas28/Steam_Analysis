drop view if exists vw_players_3l;

create view vw_players_3l AS
select c.a3, count(pl.steamid) players
from player_locations pl
inner join countries_codes_and_coordinates c
    on pl.loccountrycode = c.a2
    group by c.a3