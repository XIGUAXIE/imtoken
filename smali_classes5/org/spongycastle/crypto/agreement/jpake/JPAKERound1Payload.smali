.class public Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;
.super Ljava/lang/Object;
.source "JPAKERound1Payload.java"


# instance fields
.field private final gx1:Ljava/math/BigInteger;

.field private final gx2:Ljava/math/BigInteger;

.field private final knowledgeProofForX1:[Ljava/math/BigInteger;

.field private final knowledgeProofForX2:[Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "participantId"

    .line 58
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gx1"

    .line 59
    invoke-static {p2, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gx2"

    .line 60
    invoke-static {p3, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX1"

    .line 61
    invoke-static {p4, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX2"

    .line 62
    invoke-static {p5, v0}, Lorg/spongycastle/crypto/agreement/jpake/JPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->participantId:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->gx1:Ljava/math/BigInteger;

    .line 66
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->gx2:Ljava/math/BigInteger;

    .line 67
    array-length p1, p4

    invoke-static {p4, p1}, Lorg/spongycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX1:[Ljava/math/BigInteger;

    .line 68
    array-length p1, p5

    invoke-static {p5, p1}, Lorg/spongycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX2:[Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getGx1()Ljava/math/BigInteger;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->gx1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGx2()Ljava/math/BigInteger;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->gx2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getKnowledgeProofForX1()[Ljava/math/BigInteger;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX1:[Ljava/math/BigInteger;

    array-length v1, v0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getKnowledgeProofForX2()[Ljava/math/BigInteger;
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->knowledgeProofForX2:[Ljava/math/BigInteger;

    array-length v1, v0

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->copyOf([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/jpake/JPAKERound1Payload;->participantId:Ljava/lang/String;

    return-object v0
.end method
