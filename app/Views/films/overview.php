<?php if (! empty($films) && is_array($films)) : ?>

<?php 
    $table = new \CodeIgniter\View\Table();

    $listFilms=[];

    foreach ($films as $film){
        
        $affiche = img('images/affiches110/'.$film["affiche"]);
        array_push($listFilms, $affiche);

        array_push($listFilms,
                    '<p>'.$film["titre"].'<p>'.
                    '<p>'.'Durée : '.$film["dureeMinutes"].'minutes'.'</p>'.
                    '<p>'.'Synopsis : '.$film["synopsis"].'</p>');
    }
    
    $nombreColonne = 4;
    $listFilmsTable = $table->makeColumns($listFilms, $nombreColonne);

    echo $table->generate($listFilmsTable);
    
?>

<?php else : ?>

    <h3>Aucun films</h3>

    <p>Unable to find any news for you.</p>

<?php endif ?>