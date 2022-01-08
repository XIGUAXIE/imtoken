.class public final Lproguard/ftsafe/g/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private e:[B

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lproguard/ftsafe/g/d;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lproguard/ftsafe/g/d;->f:I

    const/16 v0, -0x64

    iput v0, p0, Lproguard/ftsafe/g/d;->g:I

    return-void
.end method


# virtual methods
.method public a()Lproguard/ftsafe/g/b;
    .locals 10

    new-instance v9, Lproguard/ftsafe/g/b;

    iget-object v1, p0, Lproguard/ftsafe/g/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lproguard/ftsafe/g/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lproguard/ftsafe/g/d;->c:Ljava/lang/String;

    iget-object v4, p0, Lproguard/ftsafe/g/d;->d:Ljava/util/List;

    iget-object v5, p0, Lproguard/ftsafe/g/d;->e:[B

    iget v6, p0, Lproguard/ftsafe/g/d;->f:I

    iget v7, p0, Lproguard/ftsafe/g/d;->g:I

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lproguard/ftsafe/g/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[BIILproguard/ftsafe/g/c;)V

    return-object v9
.end method

.method public a([Ljava/util/UUID;)Lproguard/ftsafe/g/d;
    .locals 5

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lproguard/ftsafe/g/d;->d:Ljava/util/List;

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
