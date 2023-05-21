<?php

namespace App\Repository;

use App\Entity\Prestataire;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
use Knp\Component\Pager\PaginatorInterface;
use Knp\Component\Pager\Pagination\PaginationInterface;


/**
 * @extends ServiceEntityRepository<Prestataire>
 *
 * @method Prestataire|null find($id, $lockMode = null, $lockVersion = null)
 * @method Prestataire|null findOneBy(array $criteria, array $orderBy = null)
 * @method Prestataire[]    findAll()
 * @method Prestataire[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PrestataireRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry,  private VilleRepository $villeRepository, private PaginatorInterface $paginatorInterface)
    {
        parent::__construct($registry, Prestataire::class);
        $this->villeRepository = $villeRepository;
        
    }

    public function save(Prestataire $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Prestataire $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function findByVille($ville, $page = 1): PaginationInterface
    {
        
        $qb = $this->createQueryBuilder('p')
        ->join('p.utilisateurs', 'u')
        ->join('u.ville', 'v')        
        ->where('v.VilleName = :val')
        ->setParameter('val', $ville)
        ;

        

        return $this->paginatorInterface->paginate($qb, $page, 3);     
    }

    public function findByPrestataire($prestataire, $page = 1): PaginationInterface
    {
        
        $qb = $this->createQueryBuilder('p')
        ->join('p.utilisateurs', 'u')
        ->join('u.ville', 'v')        
        ->where('p.Nom = :val')
        ->setParameter('val', $prestataire)
        ;

        

        return $this->paginatorInterface->paginate($qb, $page, 3);     
    }
    
    public function findByCP($cp, $page = 1): PaginationInterface
    {
        
        $qb = $this->createQueryBuilder('p')
        ->join('p.utilisateurs', 'u')
        ->join('u.codePostal', 'cp')        
        ->where('cp.CodePostal = :val')
        ->setParameter('val', $cp)
        ;

        

        return $this->paginatorInterface->paginate($qb, $page, 3);     
    }

    public function findByRegion($region, $page = 1): PaginationInterface
    {
        
        $qb = $this->createQueryBuilder('p')
        ->join('p.utilisateurs', 'u')
        ->join('u.region', 'r')        
        ->where('r.regionName = :val')
        ->setParameter('val', $region)
        ;

        

        return $this->paginatorInterface->paginate($qb, $page, 3);     
    }


//    /**
//     * @return Prestataire[] Returns an array of Prestataire objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('p')
//            ->andWhere('p.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('p.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Prestataire
//    {
//        return $this->createQueryBuilder('p')
//            ->andWhere('p.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
