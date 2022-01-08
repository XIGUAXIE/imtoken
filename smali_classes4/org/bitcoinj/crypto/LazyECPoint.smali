.class public Lorg/bitcoinj/crypto/LazyECPoint;
.super Ljava/lang/Object;
.source "LazyECPoint.java"


# instance fields
.field private final bits:[B

.field private final curve:Lorg/spongycastle/math/ec/ECCurve;

.field private point:Lorg/spongycastle/math/ec/ECPoint;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;[B)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/bitcoinj/crypto/LazyECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 45
    iput-object p2, p0, Lorg/bitcoinj/crypto/LazyECPoint;->bits:[B

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECPoint;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/math/ec/ECPoint;

    iput-object p1, p0, Lorg/bitcoinj/crypto/LazyECPoint;->point:Lorg/spongycastle/math/ec/ECPoint;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lorg/bitcoinj/crypto/LazyECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    .line 51
    iput-object p1, p0, Lorg/bitcoinj/crypto/LazyECPoint;->bits:[B

    return-void
.end method

.method private getCanonicalEncoding()[B
    .locals 1

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0, v0}, Lorg/bitcoinj/crypto/LazyECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->getCanonicalEncoding()[B

    move-result-object v0

    check-cast p1, Lorg/bitcoinj/crypto/LazyECPoint;

    invoke-direct {p1}, Lorg/bitcoinj/crypto/LazyECPoint;->getCanonicalEncoding()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lorg/spongycastle/math/ec/ECPoint;)Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->equals(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result p1

    return p1
.end method

.method public get()Lorg/spongycastle/math/ec/ECPoint;
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/bitcoinj/crypto/LazyECPoint;->point:Lorg/spongycastle/math/ec/ECPoint;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lorg/bitcoinj/crypto/LazyECPoint;->curve:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v1, p0, Lorg/bitcoinj/crypto/LazyECPoint;->bits:[B

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/crypto/LazyECPoint;->point:Lorg/spongycastle/math/ec/ECPoint;

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/crypto/LazyECPoint;->point:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 176
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 172
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getCurve()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 156
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method public getDetachedPoint()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getDetachedPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/bitcoinj/crypto/LazyECPoint;->bits:[B

    if-eqz v0, :cond_0

    .line 68
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Z)[B
    .locals 1

    .line 141
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->isCompressed()Z

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/crypto/LazyECPoint;->bits:[B

    if-eqz v0, :cond_0

    .line 142
    array-length p1, v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    return-object p1
.end method

.method public getX()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getY()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 164
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public getZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getZCoords()[Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 192
    invoke-direct {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->getCanonicalEncoding()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isCompressed()Z
    .locals 4

    .line 94
    iget-object v0, p0, Lorg/bitcoinj/crypto/LazyECPoint;->bits:[B

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 95
    aget-byte v2, v0, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    aget-byte v0, v0, v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 97
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isCompressed()Z

    move-result v0

    return v0
.end method

.method public isInfinity()Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    return v0
.end method

.method public isNormalized()Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    return v0
.end method

.method public multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 129
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->negate()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->scaleX(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->scaleY(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->subtract(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public threeTimes()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 168
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lorg/bitcoinj/crypto/LazyECPoint;->get()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
