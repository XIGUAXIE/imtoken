.class public Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;
.super Ljava/lang/Object;
.source "IntroductionProcessor.java"


# static fields
.field private static final INTRODUCTION_PROTOCOL_VERSION:I = 0x3

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

.field private final introductionCircuit:Lcom/subgraph/orchid/Circuit;

.field private final introductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/subgraph/orchid/circuits/hs/HiddenService;Lcom/subgraph/orchid/Circuit;Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    .line 23
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    .line 24
    iput-object p3, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    return-void
.end method

.method private addAuthentication(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->hiddenService:Lcom/subgraph/orchid/circuits/hs/HiddenService;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HiddenService;->getAuthenticationCookie()Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getAuthTypeByte()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 92
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v1

    array-length v1, v1

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/HSDescriptorCookie;->getValue()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method private createIntroductionBuffer(ILcom/subgraph/orchid/Router;[B[B)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v0, 0x200

    .line 65
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 66
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v1

    .line 67
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v2

    int-to-short v2, v2

    .line 68
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v3

    .line 69
    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object p2

    invoke-virtual {p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getRawBytes()[B

    move-result-object p2

    const/4 v4, 0x3

    .line 71
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 72
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->addAuthentication(Ljava/nio/ByteBuffer;)V

    .line 74
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    array-length p1, p2

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private createIntroductionPayload(Lcom/subgraph/orchid/Router;[B[BLcom/subgraph/orchid/crypto/TorPublicKey;)[B
    .locals 4

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-direct {p0, v1, p1, p3, p2}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->createIntroductionBuffer(ILcom/subgraph/orchid/Router;[B[B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 61
    invoke-direct {p0, p1, p4}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->encryptIntroductionBuffer(Ljava/nio/ByteBuffer;Lcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object p1

    return-object p1
.end method

.method private encryptIntroductionBuffer(Ljava/nio/ByteBuffer;Lcom/subgraph/orchid/crypto/TorPublicKey;)[B
    .locals 1

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 99
    new-array v0, v0, [B

    .line 100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 101
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 102
    new-instance p1, Lcom/subgraph/orchid/crypto/HybridEncryption;

    invoke-direct {p1}, Lcom/subgraph/orchid/crypto/HybridEncryption;-><init>()V

    .line 103
    invoke-virtual {p1, v0, p2}, Lcom/subgraph/orchid/crypto/HybridEncryption;->encrypt([BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    invoke-virtual {v0}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object v0

    return-object v0
.end method

.method markCircuitForClose()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {v0}, Lcom/subgraph/orchid/Circuit;->markForClose()V

    return-void
.end method

.method sendIntroduce(Lcom/subgraph/orchid/crypto/TorPublicKey;[B[BLcom/subgraph/orchid/Router;)Z
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {v0}, Lcom/subgraph/orchid/Circuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x22

    invoke-interface {v0, v3, v2, v1}, Lcom/subgraph/orchid/Circuit;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 34
    invoke-direct {p0, p4, p2, p3, p1}, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->createIntroductionPayload(Lcom/subgraph/orchid/Router;[B[BLcom/subgraph/orchid/crypto/TorPublicKey;)[B

    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionPoint:Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;

    invoke-virtual {p2}, Lcom/subgraph/orchid/circuits/hs/IntroductionPoint;->getServiceKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p2

    invoke-virtual {p2}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 37
    invoke-interface {v0, p1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 38
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Circuit;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 40
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->introductionCircuit:Lcom/subgraph/orchid/Circuit;

    invoke-interface {p1}, Lcom/subgraph/orchid/Circuit;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object p1

    if-nez p1, :cond_0

    .line 42
    sget-object p1, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->logger:Ljava/util/logging/Logger;

    const-string p2, "Timeout waiting for response to INTRODUCE1 cell"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return v2

    .line 44
    :cond_0
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result p2

    const/16 p3, 0x28

    if-eq p2, p3, :cond_1

    .line 45
    sget-object p2, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected relay cell type received waiting for response to INTRODUCE1 cell: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v2

    .line 47
    :cond_1
    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->cellBytesRemaining()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 50
    :cond_2
    sget-object p2, Lcom/subgraph/orchid/circuits/hs/IntroductionProcessor;->logger:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "INTRODUCE_ACK indicates that introduction was not forwarded: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/RelayCell;->getByte()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v2
.end method
