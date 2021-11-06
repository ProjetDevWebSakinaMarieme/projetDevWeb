<?php namespace App\Controllers;

use App\Models\FilmsModel;
use CodeIgniter\Controller;

class Films extends Controller
{
    public function index()
    {
        $model = new FilmsModel();

        $data = [
            'films' => $model->getFilms(),
            'title' => 'Films à l\'affiche',
        ];

        echo view('templates/header', $data);
        echo view('Films/overview', $data);
        echo view('templates/footer', $data);
    }

    public function view($alias = null)
    {
        $model = new FilmsModel();

        $data['Films'] = $model->getFilms($alias);

        if (empty($data['Films']))
        {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Cannot find the Films item: '. $slug);
        }

        $data['title'] = $data['Films']['title'];

        echo view('templates/header', $data);
        echo view('Films/view', $data);
        echo view('templates/footer', $data);
    }

    public function create()
    {
        $model = new FilmsModel();

        if (! $this->validate([
            'title' => 'required|min_length[3]|max_length[255]',
            'body'  => 'required'
        ]))
        {
            echo view('templates/header', ['title' => 'Create a Films item']);
            echo view('Films/create');
            echo view('templates/footer');
        }
        else
        {
            $model->save([
                'title' => $this->request->getVar('title'),
                'slug'  => url_title($this->request->getVar('title'), '-', TRUE),
                'body'  => $this->request->getVar('body'),
            ]);

            echo view('Films/success');
        }
    }
}