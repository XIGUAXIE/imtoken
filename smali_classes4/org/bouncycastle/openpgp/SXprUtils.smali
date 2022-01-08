.class Lorg/bouncycastle/openpgp/SXprUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseS2K(Ljava/io/InputStream;)Lorg/bouncycastle/bcpg/S2K;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipOpenParenthesis(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {p0, v0}, Lorg/bouncycastle/openpgp/SXprUtils;->readString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {p0}, Lorg/bouncycastle/openpgp/SXprUtils;->skipCloseParenthesis(Ljava/io/InputStream;)V

    new-instance p0, Lorg/bouncycastle/openpgp/SXprUtils$1;

    long-to-int v4, v5

    const/4 v2, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/openpgp/SXprUtils$1;-><init>(I[BIJ)V

    return-object p0
.end method

.method static readBytes(Ljava/io/InputStream;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/openpgp/SXprUtils;->readLength(Ljava/io/InputStream;I)I

    move-result p1

    new-array p1, p1, [B

    invoke-static {p0, p1}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    return-object p1
.end method

.method private static readLength(Ljava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    add-int/lit8 p1, p1, -0x30

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method static readString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/openpgp/SXprUtils;->readLength(Ljava/io/InputStream;I)I

    move-result p1

    new-array v0, p1, [C

    const/4 v1, 0x0

    :goto_0
    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static skipCloseParenthesis(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/16 v0, 0x29

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown character encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static skipOpenParenthesis(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unknown character encountered"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
