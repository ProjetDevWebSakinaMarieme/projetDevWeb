<?php namespace App\Models;

use CodeIgniter\Model;

class FilmsModel extends Model
{
    protected $table = 'films';
    protected $primaryKey = 'id';
    protected $returnType = 'array';
    protected $allowedFields = ['titre', 'alias', 'titreOriginal'];

    public function getFilms($alias = false)
    {
        if ($alias === false)
        {
            // Retourne tous les films à l'affiche :
            $this->where('enAffiche', TRUE);
            return $this->findAll();
        } else {
            // Retourne le premier film correspondant à l'alias demandé :
            $this->join('genres','films.genres_id = genres.id', 'left');
            $this->where('films.alias',$alias);
            return $this->first();
        }
    }
}