.class public Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;
.super Lorg/bouncycastle/bcpg/BCPGObject;

# interfaces
.implements Lorg/bouncycastle/bcpg/BCPGKey;


# instance fields
.field e:Lorg/bouncycastle/bcpg/MPInteger;

.field n:Lorg/bouncycastle/bcpg/MPInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->n:Lorg/bouncycastle/bcpg/MPInteger;

    new-instance p1, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {p1, p2}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->e:Lorg/bouncycastle/bcpg/MPInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/bcpg/BCPGObject;-><init>()V

    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->n:Lorg/bouncycastle/bcpg/MPInteger;

    new-instance v0, Lorg/bouncycastle/bcpg/MPInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/bcpg/MPInteger;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->e:Lorg/bouncycastle/bcpg/MPInteger;

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->n:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->e:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    return-void
.end method

.method public getEncoded()[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PGP"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->n:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/RSAPublicBCPGKey;->e:Lorg/bouncycastle/bcpg/MPInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/MPInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method