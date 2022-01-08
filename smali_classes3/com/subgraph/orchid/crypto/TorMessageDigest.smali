.class public Lcom/subgraph/orchid/crypto/TorMessageDigest;
.super Ljava/lang/Object;
.source "TorMessageDigest.java"


# static fields
.field private static final TOR_DIGEST256_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field public static final TOR_DIGEST256_SIZE:I = 0x20

.field private static final TOR_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field public static final TOR_DIGEST_SIZE:I = 0x14


# instance fields
.field private final digestInstance:Ljava/security/MessageDigest;

.field private final isDigest256:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->createDigestInstance(Z)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    .line 28
    iput-boolean p1, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->isDigest256:Z

    return-void
.end method

.method private createDigestInstance(Z)Ljava/security/MessageDigest;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "SHA-256"

    goto :goto_0

    :cond_0
    const-string p1, "SHA-1"

    .line 38
    :goto_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Lcom/subgraph/orchid/TorException;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getDigestBytes()[B
    .locals 2

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 62
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getHexDigest()Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorMessageDigest;->getDigestBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    return-object v0
.end method

.method public isDigest256()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->isDigest256:Z

    return v0
.end method

.method public peekDigest([BII)[B
    .locals 1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 76
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 77
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 79
    new-instance p2, Lcom/subgraph/orchid/TorException;

    invoke-direct {p2, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public update(Ljava/lang/String;)V
    .locals 2

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    const-string v1, "ISO-8859-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 124
    new-instance v0, Lcom/subgraph/orchid/TorException;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public update([B)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorMessageDigest;->digestInstance:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
