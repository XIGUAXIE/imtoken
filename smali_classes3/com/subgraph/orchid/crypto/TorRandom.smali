.class public Lcom/subgraph/orchid/crypto/TorRandom;
.super Ljava/lang/Object;
.source "TorRandom.java"


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/subgraph/orchid/crypto/TorRandom;->createRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method private static createRandom()Ljava/security/SecureRandom;
    .locals 2

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 18
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Lcom/subgraph/orchid/TorException;

    invoke-direct {v1, v0}, Lcom/subgraph/orchid/TorException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getBytes(I)[B
    .locals 1

    .line 25
    new-array p1, p1, [B

    .line 26
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p1
.end method

.method public nextInt()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public nextInt(I)I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p1

    return p1
.end method

.method public nextLong()J
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/subgraph/orchid/crypto/TorRandom;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public nextLong(J)J
    .locals 7

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/subgraph/orchid/crypto/TorRandom;->nextLong()J

    move-result-wide v0

    .line 34
    rem-long v2, v0, p1

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    add-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    return-wide v2
.end method
