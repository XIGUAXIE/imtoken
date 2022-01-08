.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
.source "GF2nPolynomialElement.java"


# static fields
.field private static final bitMask:[I


# instance fields
.field private polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x21

    new-array v0, v0, [I

    .line 24
    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 103
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 104
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 105
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 45
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 46
    new-instance p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 47
    invoke-direct {p0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->randomize(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 59
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 60
    new-instance p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 61
    iget p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;[B)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 75
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 76
    new-instance p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {p1, v0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[B)V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 77
    iget p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;[I)V
    .locals 2

    .line 88
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 90
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    .line 91
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 92
    iget p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method public static ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 5

    .line 155
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getDegree()I

    move-result v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I[I)V

    .line 157
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method public static ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 2

    .line 143
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getDegree()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 144
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v1, p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1
.end method

.method private getGF2Polynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    .line 250
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method private halfTrace()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 832
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 837
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    const/4 v2, 0x1

    .line 839
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v3, v1

    shr-int/2addr v3, v1

    if-gt v2, v3, :cond_0

    .line 841
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 842
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 843
    invoke-virtual {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 834
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private randomize(Ljava/util/Random;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 177
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize(Ljava/util/Random;)V

    return-void
.end method

.method private reducePentanomialBitwise([I)V
    .locals 5

    .line 952
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v1, 0x2

    aget v1, p1, v1

    sub-int/2addr v0, v1

    .line 953
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v2, 0x1

    aget v3, p1, v2

    sub-int/2addr v1, v3

    .line 954
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v4, 0x0

    aget p1, p1, v4

    sub-int/2addr v3, p1

    .line 955
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-lt p1, v2, :cond_1

    .line 957
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 959
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 960
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v4, p1, v0

    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 961
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v4, p1, v1

    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 962
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v4, p1, v3

    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 963
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v4, p1, v4

    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 967
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 968
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method

.method private reduceThis()V
    .locals 4

    .line 857
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-le v0, v1, :cond_6

    .line 859
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial()Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_2

    .line 865
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getTc()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v2, v0

    if-le v2, v1, :cond_1

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceTrinomial(II)V

    return-void

    .line 877
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceTrinomialBitwise(I)V

    return-void

    .line 869
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nPolynomialElement.reduce: the field polynomial is not a trinomial"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 890
    :try_start_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->getPc()[I

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 898
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v3, 0x2

    aget v3, v0, v3

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_4

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_3

    goto :goto_1

    .line 905
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reducePentanomial(I[I)V

    return-void

    .line 902
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reducePentanomialBitwise([I)V

    return-void

    .line 894
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GF2nPolynomialElement.reduce: the field polynomial is not a pentanomial"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 910
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 911
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void

    .line 915
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v0, v1, :cond_7

    .line 917
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    :cond_7
    return-void
.end method

.method private reduceTrinomialBitwise(I)V
    .locals 3

    .line 928
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v0, p1

    .line 929
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-lt p1, v1, :cond_1

    .line 931
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 935
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    .line 936
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->xorBit(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 940
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 941
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 285
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 286
    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 299
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-void

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 301
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method assignOne()V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->assignOne()V

    return-void
.end method

.method assignZero()V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->assignZero()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 120
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 213
    instance-of v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v1, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    check-cast p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    .line 219
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    if-eq v1, v2, :cond_1

    .line 221
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 228
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public increase()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    .line 317
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 318
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->increaseThis()V

    return-object v0
.end method

.method public increaseThis()V
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->increaseThis()V

    return-void
.end method

.method public invert()Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->invertMAIA()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0
.end method

.method public invertEEA()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v1, v1, 0x20

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 403
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 404
    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 405
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 406
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    .line 409
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 410
    :goto_0
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v4

    if-nez v4, :cond_1

    .line 412
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 413
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 414
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    sub-int/2addr v4, v5

    if-gez v4, :cond_0

    neg-int v4, v4

    .line 424
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 426
    :cond_0
    invoke-virtual {v2, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    .line 427
    invoke-virtual {v0, v1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeftAddThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;I)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 430
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1

    .line 399
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public invertMAIA()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 502
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_4

    .line 506
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const-string v2, "ONE"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    .line 507
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    .line 508
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->getGF2Polynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v2

    .line 509
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    .line 513
    invoke-virtual {v2, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 515
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    .line 516
    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 518
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_0

    .line 522
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getFieldPolynomial()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 523
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftRightThis()V

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 528
    new-instance v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v1

    .line 531
    :cond_2
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 532
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 533
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v4

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    .line 542
    :cond_3
    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    .line 543
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    goto :goto_0

    .line 504
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public invertSquare()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_3

    .line 452
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 454
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 455
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 456
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    .line 461
    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->floorLog(I)I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, 0x1

    :goto_0
    if-ltz v3, :cond_2

    .line 464
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v5, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    const/4 v6, 0x1

    :goto_1
    if-gt v6, v4, :cond_0

    .line 469
    invoke-virtual {v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 472
    :cond_0
    invoke-virtual {v2, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    shl-int/lit8 v4, v4, 0x1

    .line 476
    sget-object v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bitMask:[I

    aget v5, v5, v3

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    .line 479
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 480
    invoke-virtual {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    return-object v2

    .line 449
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public isOne()Z
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 340
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 341
    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    return-object v0
.end method

.method public multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 354
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v2, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 364
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    return-void

    .line 367
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v0, v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 369
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-void

    .line 360
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 356
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method public power(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 690
    new-instance p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {p1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    return-object p1

    .line 693
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v1

    if-nez p1, :cond_1

    return-object v1

    .line 700
    :cond_1
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v2, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 701
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 702
    iget-object v3, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    const/4 v3, 0x0

    .line 704
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v3, v4, :cond_3

    shl-int v4, v0, v3

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 708
    invoke-virtual {v1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiplyThisBy(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 710
    :cond_2
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public solveQuadraticEquation()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 757
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0

    .line 762
    :cond_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 764
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->halfTrace()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0

    .line 772
    :cond_1
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    .line 775
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v2

    .line 776
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    const/4 v4, 0x1

    .line 778
    :goto_0
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v4, v5, :cond_2

    .line 782
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 783
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 784
    invoke-virtual {v3, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    .line 785
    invoke-virtual {v3, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 788
    :cond_2
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    .line 790
    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->square()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->add(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    .line 792
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public square()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    .line 556
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squarePreCalc()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v0

    return-object v0
.end method

.method public squareBitwise()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .line 625
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 626
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisBitwise()V

    .line 627
    invoke-direct {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squareMatrix()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .line 581
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 582
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisMatrix()V

    .line 583
    invoke-direct {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squarePreCalc()Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
    .locals 1

    .line 658
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 659
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    .line 660
    invoke-direct {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-object v0
.end method

.method public squareRoot()Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 1

    .line 724
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    .line 725
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareRootThis()V

    return-object v0
.end method

.method public squareRootThis()V
    .locals 2

    .line 735
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->expandN(I)V

    .line 736
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->reduceN()V

    const/4 v0, 0x0

    .line 737
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getDegree()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 739
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public squareThis()V
    .locals 0

    .line 565
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThisPreCalc()V

    return-void
.end method

.method public squareThisBitwise()V
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisBitwise()V

    .line 643
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-void
.end method

.method public squareThisMatrix()V
    .locals 5

    .line 599
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    const/4 v1, 0x0

    .line 600
    :goto_0
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v1, v2, :cond_1

    .line 602
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mField:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    check-cast v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    iget-object v3, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->vectorMult(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    :cond_1
    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    return-void
.end method

.method public squareThisPreCalc()V
    .locals 1

    .line 675
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->squareThisPreCalc()V

    .line 676
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->reduceThis()V

    return-void
.end method

.method testBit(I)Z
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result p1

    return p1
.end method

.method public testRightmostBit()Z
    .locals 2

    .line 272
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 1006
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toFlexiBigInt()Ljava/math/BigInteger;
    .locals 1

    .line 1018
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toFlexiBigInt()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 983
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    .line 995
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->polynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public trace()I
    .locals 4

    .line 806
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 809
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->mDegree:I

    if-ge v2, v3, :cond_0

    .line 811
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->squareThis()V

    .line 812
    invoke-virtual {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->addToThis(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->isOne()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
