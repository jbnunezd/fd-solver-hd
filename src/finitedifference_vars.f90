!===============================================================================!
MODULE MOD_FiniteDifference2D_vars
!-------------------------------------------------------------------------------!
IMPLICIT NONE
!-------------------------------------------------------------------------------!
PUBLIC
!-------------------------------------------------------------------------------!
! >> GLOBAL VARIABLES                                                           !
!-------------------------------------------------------------------------------!
INTEGER,PARAMETER   :: nVar  = 4
INTEGER,PARAMETER   :: nDims = 2
REAL                :: MESH_SX(1:nDims)
REAL                :: MESH_X0(1:nDims)
REAL                :: MESH_X1(1:nDims)
REAL                :: MESH_DX(1:nDims)
INTEGER             :: nGhosts
INTEGER             :: nElemsX 
INTEGER             :: nElemsY

REAL,ALLOCATABLE    :: MeshNodes(:,:,:)

REAL,ALLOCATABLE    :: U(:,:,:)
REAL,ALLOCATABLE    :: V(:,:,:)
REAL,ALLOCATABLE    :: S(:,:,:)
REAL,ALLOCATABLE    :: Ut(:,:,:)
REAL,ALLOCATABLE    :: FX(:,:,:)
REAL,ALLOCATABLE    :: FY(:,:,:)
REAL,ALLOCATABLE    :: Fn(:,:,:)
REAL,ALLOCATABLE    :: Fp(:,:,:)
REAL,ALLOCATABLE    :: WM(:,:,:)
REAL,ALLOCATABLE    :: WP(:,:,:)
LOGICAL,ALLOCATABLE :: Ind(:,:,:)

REAL,ALLOCATABLE    :: K0(:,:,:)
REAL,ALLOCATABLE    :: K1(:,:,:)
REAL,ALLOCATABLE    :: K2(:,:,:)
REAL,ALLOCATABLE    :: K3(:,:,:)
REAL,ALLOCATABLE    :: K4(:,:,:)
REAL,ALLOCATABLE    :: K5(:,:,:)

INTEGER,PARAMETER   :: UNIT_FILE = 123
INTEGER             :: WhichOutput
INTEGER             :: nOutputFiles
INTEGER             :: InitialCondition
INTEGER             :: BoundaryConditionsType(4)
REAL                :: PrimRefState1(1:nVar)
REAL                :: PrimRefState2(1:nVar)
REAL                :: PrimRefState3(1:nVar)
REAL                :: PrimRefState4(1:nVar)

REAL                :: t
REAL                :: dt
REAL                :: dt_Analyze
REAL                :: CFL
REAL                :: tEnd
REAL                :: Kappa
REAL                :: KappaM1
REAL                :: KappaP1
REAL                :: sKappaM1
REAL                :: LambdaMaxX
REAL                :: LambdaMaxY

INTEGER             :: Reconstruction
INTEGER             :: ReconstructionFix
REAL,PARAMETER      :: WENOEPS = 1.0E-24
INTEGER,PARAMETER   :: WENOEXP = 2.0


REAL,PARAMETER      :: PI           = ACOS(-1.0)
REAL,PARAMETER      :: EPS          = 1.0E-08
REAL,PARAMETER      :: ACCURACY     = 1.0E-14
REAL,PARAMETER      :: MIN_SPEED    = 1.0E-12
REAL,PARAMETER      :: MIN_ENERGY   = 1.0E-12
REAL,PARAMETER      :: MIN_DENSITY  = 1.0E-12
REAL,PARAMETER      :: MIN_PRESSURE = 1.0E-12
REAL,PARAMETER      :: MIN_MOMENTUM = 1.0E-12
REAL,PARAMETER      :: MIN_TIMESTEP = 1.0E-08

CHARACTER(LEN=255)  :: VarNameVisu(1:nVar)

!-------------------------------------------------------------------------------!
END MODULE MOD_FiniteDifference2D_vars
!===============================================================================!
