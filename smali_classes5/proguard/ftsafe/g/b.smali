.class public final Lproguard/ftsafe/g/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final e:[B

.field private final f:I

.field private final g:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;[BII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproguard/ftsafe/g/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lproguard/ftsafe/g/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lproguard/ftsafe/g/b;->d:Ljava/util/List;

    iput-object p3, p0, Lproguard/ftsafe/g/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lproguard/ftsafe/g/b;->e:[B

    iput p6, p0, Lproguard/ftsafe/g/b;->f:I

    iput p7, p0, Lproguard/ftsafe/g/b;->g:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[BIILproguard/ftsafe/g/c;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lproguard/ftsafe/g/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[BII)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/g/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/g/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/g/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lproguard/ftsafe/g/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/g/b;->e:[B

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lproguard/ftsafe/g/b;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lproguard/ftsafe/g/b;->g:I

    return v0
.end method
