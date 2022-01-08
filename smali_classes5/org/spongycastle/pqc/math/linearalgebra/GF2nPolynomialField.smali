.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.source "GF2nPolynomialField.java"


# instance fields
.field private isPentanomial:Z

.field private isTrinomial:Z

.field private pc:[I

.field squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

.field private tc:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 36
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-lt p1, v0, :cond_0

    .line 50
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    .line 51
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    .line 52
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    .line 53
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 54
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "k must be at least 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(ILorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 36
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-lt p1, v0, :cond_7

    .line 102
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_6

    .line 106
    invoke-virtual {p2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    .line 112
    iput-object p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 113
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    const/4 p1, 0x2

    const/4 p2, 0x1

    const/4 v1, 0x1

    .line 115
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->getLength()I

    move-result v2

    sub-int/2addr v2, p2

    const/4 v3, 0x5

    if-ge v1, v2, :cond_2

    .line 117
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v2, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    if-ne p1, v0, :cond_0

    .line 122
    iput v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    :cond_0
    if-gt p1, v3, :cond_1

    .line 126
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    add-int/lit8 v3, p1, -0x3

    aput v1, v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    .line 132
    iput-boolean p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    :cond_3
    if-ne p1, v3, :cond_4

    .line 136
    iput-boolean p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 138
    :cond_4
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 139
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void

    .line 108
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 104
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 100
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "degree must be at least 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 67
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 30
    iput-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 36
    iput-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    if-lt p1, v0, :cond_1

    .line 72
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeFieldPolynomial2()V

    .line 81
    :goto_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->computeSquaringMatrix()V

    .line 82
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    .line 83
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    return-void

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k must be at least 3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private computeSquaringMatrix()V
    .locals 8

    .line 376
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    new-array v0, v0, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 378
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v2, v2, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iput-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 379
    :goto_0
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 381
    new-instance v5, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const-string v7, "ZERO"

    invoke-direct {v5, v6, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 384
    :cond_0
    :goto_1
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 386
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const-string v4, "ONE"

    invoke-direct {v3, v1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(ILjava/lang/String;)V

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->shiftLeft(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->remainder(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    .line 389
    :goto_2
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v2, v3, :cond_4

    const/4 v3, 0x1

    .line 391
    :goto_3
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v3, v4, :cond_3

    .line 393
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shl-int/lit8 v5, v2, 0x1

    sub-int/2addr v4, v5

    aget-object v4, v0, v4

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 395
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    add-int/lit8 v5, v3, -0x1

    aget-object v4, v4, v5

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 399
    :cond_4
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    shr-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v1

    :goto_4
    iget v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-gt v0, v2, :cond_5

    .line 401
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    shl-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    aget-object v2, v2, v3

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private testPentanomials()Z
    .locals 11

    .line 487
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 488
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 489
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 490
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v4, v4, -0x3

    if-gt v0, v4, :cond_7

    if-nez v3, :cond_7

    .line 492
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v4, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v4, v0, 0x1

    move v5, v4

    .line 493
    :goto_1
    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_6

    if-nez v3, :cond_6

    .line 495
    iget-object v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v6, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    add-int/lit8 v6, v5, 0x1

    move v8, v6

    .line 496
    :goto_2
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v9, v2

    if-gt v8, v9, :cond_5

    if-nez v3, :cond_5

    .line 498
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v9, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 499
    iget v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_3

    :cond_0
    const/4 v9, 0x0

    :goto_3
    and-int/lit8 v10, v0, 0x1

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_4

    :cond_1
    const/4 v10, 0x0

    :goto_4
    or-int/2addr v9, v10

    and-int/lit8 v10, v5, 0x1

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_5

    :cond_2
    const/4 v10, 0x0

    :goto_5
    or-int/2addr v9, v10

    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_6

    :cond_3
    const/4 v10, 0x0

    :goto_6
    or-int/2addr v9, v10

    if-eqz v9, :cond_4

    .line 502
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 506
    iput-boolean v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    .line 507
    iget-object v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    aput v0, v4, v1

    .line 508
    aput v5, v4, v2

    .line 509
    aput v8, v4, v7

    return v3

    .line 513
    :cond_4
    iget-object v9, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v9, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 515
    :cond_5
    iget-object v7, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v7, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    move v5, v6

    goto :goto_1

    .line 517
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v5, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    move v0, v4

    goto :goto_0

    :cond_7
    return v3
.end method

.method private testRandom()Z
    .locals 3

    .line 535
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->randomize()V

    .line 541
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 542
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 543
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private testTrinomials()Z
    .locals 4

    .line 452
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 453
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 454
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-virtual {v0, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    const/4 v0, 0x1

    .line 455
    :goto_0
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 457
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    .line 458
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iput-boolean v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    .line 463
    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    return v1

    .line 466
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->resetBit(I)V

    .line 467
    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isIrreducible()Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method protected computeCOBMatrix(Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V
    .locals 7

    .line 284
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    iget v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->mDegree:I

    if-ne v0, v1, :cond_a

    .line 290
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->computeCOBMatrix(Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V

    return-void

    .line 300
    :cond_0
    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v1, v1, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 301
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v4, :cond_1

    .line 303
    new-instance v4, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    invoke-direct {v4, v5}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(I)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fieldPolynomial:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {p1, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->getRandomRoot(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object v3

    .line 312
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->isZero()Z

    move-result v4

    if-nez v4, :cond_1

    .line 315
    instance-of v4, v3, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    if-eqz v4, :cond_2

    .line 317
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v4, v4, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    .line 318
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    move-object v6, p1

    check-cast v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    invoke-static {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;->ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBElement;

    move-result-object v6

    aput-object v6, v4, v5

    goto :goto_1

    .line 322
    :cond_2
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    new-array v4, v4, [Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    .line 323
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x1

    move-object v6, p1

    check-cast v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    invoke-static {v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ONE(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v6

    aput-object v6, v4, v5

    .line 326
    :goto_1
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x2

    aput-object v3, v4, v5

    .line 327
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    add-int/lit8 v5, v5, -0x3

    :goto_2
    if-ltz v5, :cond_3

    add-int/lit8 v6, v5, 0x1

    .line 329
    aget-object v6, v4, v6

    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->multiply(Lorg/spongycastle/pqc/math/linearalgebra/GFElement;)Lorg/spongycastle/pqc/math/linearalgebra/GFElement;

    move-result-object v6

    check-cast v6, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 334
    :goto_3
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v3, :cond_9

    const/4 v3, 0x0

    .line 336
    :goto_4
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v5, :cond_5

    .line 339
    aget-object v5, v4, v0

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 341
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 349
    :goto_5
    iget v3, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v0, v3, :cond_9

    const/4 v3, 0x0

    .line 351
    :goto_6
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    if-ge v3, v5, :cond_8

    .line 353
    aget-object v5, v4, v0

    invoke-virtual {v5, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;->testBit(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 355
    iget v5, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v1, v5

    iget v6, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->setBit(I)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 362
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->matrices:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->fields:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 366
    iget-object p1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->matrices:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->invertMatrix([Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 286
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected computeFieldPolynomial()V
    .locals 1

    .line 411
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 419
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    return-void
.end method

.method protected computeFieldPolynomial2()V
    .locals 1

    .line 427
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testTrinomials()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 431
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testPentanomials()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 435
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->testRandom()Z

    return-void
.end method

.method public getPc()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 191
    iget-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 196
    iget-object v2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->pc:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method protected getRandomRoot(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
    .locals 5

    .line 227
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;)V

    .line 228
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_3

    .line 237
    :cond_0
    new-instance p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-direct {p1, p0, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;Ljava/util/Random;)V

    .line 238
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    const/4 v3, 0x2

    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->ZERO(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V

    .line 240
    invoke-virtual {v2, v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->set(ILorg/spongycastle/pqc/math/linearalgebra/GF2nElement;)V

    .line 241
    new-instance p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {p1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    const/4 v3, 0x1

    .line 243
    :goto_1
    iget v4, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->mDegree:I

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_1

    .line 246
    invoke-virtual {p1, p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->multiplyAndReduce(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    .line 247
    invoke-virtual {p1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->add(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->gcd(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v2

    .line 254
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result v3

    if-eqz v2, :cond_0

    if-eq v2, v3, :cond_0

    shl-int/lit8 v1, v2, 0x1

    if-le v1, v3, :cond_2

    .line 260
    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->quotient(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    .line 265
    :cond_2
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;)V

    .line 267
    :goto_2
    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->getDegree()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 270
    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomial;->at(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;

    move-result-object p1

    return-object p1
.end method

.method public getSquaringVector(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    .line 209
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->squaringMatrix:[Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method public getTc()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    if-eqz v0, :cond_0

    .line 178
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->tc:I

    return v0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public isPentanomial()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isPentanomial:Z

    return v0
.end method

.method public isTrinomial()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;->isTrinomial:Z

    return v0
.end method
