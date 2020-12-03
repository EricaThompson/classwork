export const fetchAllPokemon = () => {
    return $.ajax({
        url: `/api/pokemons`,
        method: 'GET',
        // data: {'test': {'testing': 'tester'}}
    })
}