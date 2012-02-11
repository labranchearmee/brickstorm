<?php

namespace Application\Brickstorm\SiteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;


class MainController extends Controller
{
    public function homeAction(Request $request)
    {

      return $this->render('ApplicationBrickstormSiteBundle:Main:home.html.twig', array(

      ));
    }
}