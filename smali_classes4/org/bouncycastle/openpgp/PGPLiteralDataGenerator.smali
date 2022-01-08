.class public Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/StreamGenerator;


# static fields
.field public static final BINARY:C = 'b'

.field public static final CONSOLE:Ljava/lang/String; = "_CONSOLE"

.field public static final NOW:Ljava/util/Date;

.field public static final TEXT:C = 't'

.field public static final UTF8:C = 'u'


# instance fields
.field private oldFormat:Z

.field private pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/openpgp/PGPLiteralData;->NOW:Ljava/util/Date;

    sput-object v0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->NOW:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->oldFormat:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->oldFormat:Z

    iput-boolean p1, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->oldFormat:Z

    return-void
.end method

.method private writeHeader(Ljava/io/OutputStream;C[BJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    array-length p2, p3

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p3

    if-eq p2, v0, :cond_0

    aget-byte v0, p3, p2

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x3e8

    div-long/2addr p4, p2

    const/16 p2, 0x18

    shr-long p2, p4, p2

    long-to-int p3, p2

    int-to-byte p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    const/16 p2, 0x10

    shr-long p2, p4, p2

    long-to-int p3, p2

    int-to-byte p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    const/16 p2, 0x8

    shr-long p2, p4, p2

    long-to-int p3, p2

    int-to-byte p2, p3

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    long-to-int p2, p4

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    :cond_0
    return-void
.end method

.method public open(Ljava/io/OutputStream;CLjava/io/File;)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v6, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/lang/String;JLjava/util/Date;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/io/OutputStream;CLjava/lang/String;JLjava/util/Date;)Ljava/io/OutputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v6, p0

    iget-object v0, v6, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-nez v0, :cond_0

    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v1, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    const/16 v9, 0xb

    const-wide/16 v4, 0x2

    add-long v4, p4, v4

    array-length v0, v3

    int-to-long v7, v0

    add-long/2addr v4, v7

    const-wide/16 v7, 0x4

    add-long v10, v4, v7

    iget-boolean v12, v6, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->oldFormat:Z

    move-object v7, v1

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;IJZ)V

    iput-object v1, v6, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual/range {p6 .. p6}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->writeHeader(Ljava/io/OutputStream;C[BJ)V

    new-instance v0, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;

    iget-object v1, v6, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/StreamGenerator;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generator already in open state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open(Ljava/io/OutputStream;CLjava/lang/String;Ljava/util/Date;[B)Ljava/io/OutputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/bcpg/BCPGOutputStream;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1, p5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;I[B)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-static {p3}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v3, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->writeHeader(Ljava/io/OutputStream;C[BJ)V

    new-instance p1, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;

    iget-object p2, p0, Lorg/bouncycastle/openpgp/PGPLiteralDataGenerator;->pkOut:Lorg/bouncycastle/bcpg/BCPGOutputStream;

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/openpgp/WrappedGeneratorStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/openpgp/StreamGenerator;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "generator already in open state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
