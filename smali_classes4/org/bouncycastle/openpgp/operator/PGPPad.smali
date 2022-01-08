.class public Lorg/bouncycastle/openpgp/operator/PGPPad;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static padSessionData([B)[B
    .locals 4

    const/16 v0, 0x28

    new-array v1, v0, [B

    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    rsub-int/lit8 v2, v2, 0x28

    int-to-byte v2, v2

    array-length p0, p0

    :goto_0
    if-eq p0, v0, :cond_0

    aput-byte v2, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static unpadSessionData([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    array-length v1, p0

    sub-int/2addr v1, v0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_1

    aget-byte v2, p0, v1

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/bouncycastle/openpgp/PGPException;

    const-string v0, "bad padding found in session data"

    invoke-direct {p0, v0}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    array-length v1, p0

    sub-int/2addr v1, v0

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
