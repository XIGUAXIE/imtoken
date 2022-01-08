.class public Lorg/bouncycastle/openpgp/PGPLiteralData;
.super Ljava/lang/Object;


# static fields
.field public static final BINARY:C = 'b'

.field public static final CONSOLE:Ljava/lang/String; = "_CONSOLE"

.field public static final NOW:Ljava/util/Date;

.field public static final TEXT:C = 't'

.field public static final UTF8:C = 'u'


# instance fields
.field data:Lorg/bouncycastle/bcpg/LiteralDataPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lorg/bouncycastle/openpgp/PGPLiteralData;->NOW:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readPacket()Lorg/bouncycastle/bcpg/Packet;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/bcpg/LiteralDataPacket;

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    return-void
.end method


# virtual methods
.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getFormat()I

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getInputStream()Lorg/bouncycastle/bcpg/BCPGInputStream;

    move-result-object v0

    return-object v0
.end method

.method public getModificationTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v1}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getModificationTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getRawFileName()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralData;->data:Lorg/bouncycastle/bcpg/LiteralDataPacket;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/LiteralDataPacket;->getRawFileName()[B

    move-result-object v0

    return-object v0
.end method
