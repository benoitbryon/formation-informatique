######################
Formation informatique
######################

Projet de formation à destination des établissements d'enseignement supérieur
de l'agglomération bayonnaise (France).

Argumentaire pour les responsables de la formation.

Projet présenté :

* le 25/05/2012 pour `licence/master LAOSI/SIGLIS, à Anglet`_.
  Build disponible sur
  http://static.marmelune.net/slides/20120525-formation-informatique-anglet.html


***************
Présentation S5
***************

Pour générer la présentation au format HTML (S5) avec `landslide`_:

* prérequis système :

  * `Python`_ version 2.6 ou 2.7. Utilisez éventuellement `virtualenv`_.
  * ``make`` et ``wget`` pour utiliser le Makefile fourni.

* download :

  ::

    git clone git@github.com:benoitbryon/formation-informatique.git
    cd formation-informatique/

* installation :

  ::

    make install

* génération des slides dans ``var/slides.html`` :

  ::

    make s5

* génération du README dans ``var/README.html`` :

  ::

    make README


**********
Références
**********

.. target-notes::

.. _`licence/master LAOSI/SIGLIS, à Anglet`:
   http://ufr-sciences-cb.univ-pau.fr/live/licence-informatique
.. _`landslide`: http://pypi.python.org/pypi/landslide/
.. _`Python`: http://python.org
.. _`Virtualenv`: http://virtualenv.org
