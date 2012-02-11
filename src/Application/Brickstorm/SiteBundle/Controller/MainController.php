<?php

namespace Application\Brickstorm\SiteBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;


class MainController extends Controller
{
    public function onlineAction(Request $request)
    {

      return $this->render('ApplicationBrickstormSiteBundle:Main:online.html.twig', array(

      ));
    }
    public function offlineAction(Request $request)
    {

      return $this->render('ApplicationBrickstormSiteBundle:Main:offline.html.twig', array(

      ));
    }
}