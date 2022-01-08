.class public Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;
.super Ljava/lang/Object;
.source "RendezvousProcessor.java"


# static fields
.field private static final RENDEZVOUS_COOKIE_LEN:I = 0x14

.field private static final logger:Ljava/util/logging/Logger;

.field private static final random:Lcom/subgraph/orchid/crypto/TorRandom;


# instance fields
.field private final circuit:Lcom/subgraph/orchid/InternalCircuit;

.field private final cookie:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    .line 22
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    sput-object v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    return-void
.end method

.method protected constructor <init>(Lcom/subgraph/orchid/InternalCircuit;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    .line 29
    sget-object p1, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/crypto/TorRandom;->getBytes(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->cookie:[B

    return-void
.end method

.method private readPeerPublic(Lcom/subgraph/orchid/Cell;)Ljava/math/BigInteger;
    .locals 3

    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 73
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 74
    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 75
    invoke-static {p1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->isValidPublicValue(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal DH public value received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method


# virtual methods
.method establishRendezvous()Z
    .locals 5

    .line 33
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-interface {v0, v3, v2, v1}, Lcom/subgraph/orchid/InternalCircuit;->createRelayCell(IILcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->cookie:[B

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 35
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v1, v0}, Lcom/subgraph/orchid/InternalCircuit;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 36
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    const-string v1, "Timeout waiting for Rendezvous establish response"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v2

    .line 40
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v1

    const/16 v3, 0x27

    if-eq v1, v3, :cond_1

    .line 41
    sget-object v1, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response received from Rendezvous establish was not expected acknowledgement, Relay Command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method getCookie()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->cookie:[B

    return-object v0
.end method

.method getRendezvousRouter()Lcom/subgraph/orchid/Router;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-interface {v0}, Lcom/subgraph/orchid/CircuitNode;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v0

    return-object v0
.end method

.method processRendezvous2(Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;)Lcom/subgraph/orchid/HiddenServiceCircuit;
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {v0}, Lcom/subgraph/orchid/InternalCircuit;->receiveRelayCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    sget-object p1, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    const-string v0, "Timeout waiting for RENDEZVOUS2"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1

    .line 53
    :cond_0
    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    .line 54
    sget-object p1, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Relay cell type received while waiting for RENDEZVOUS2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/subgraph/orchid/RelayCell;->getRelayCommand()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1

    .line 57
    :cond_1
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->readPeerPublic(Lcom/subgraph/orchid/Cell;)Ljava/math/BigInteger;

    move-result-object v2

    .line 58
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->readHandshakeDigest(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    if-eqz v2, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x14

    new-array v3, v3, [B

    const/16 v4, 0x48

    new-array v4, v4, [B

    .line 64
    invoke-virtual {v0}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v0

    invoke-virtual {p1, v2, v0, v4, v3}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->deriveKeysFromDHPublicAndHash(Ljava/math/BigInteger;[B[B[B)Z

    move-result p1

    if-nez p1, :cond_3

    .line 65
    sget-object p1, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->logger:Ljava/util/logging/Logger;

    const-string v0, "Error deriving session keys while extending to hidden service"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-object v1

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/hs/RendezvousProcessor;->circuit:Lcom/subgraph/orchid/InternalCircuit;

    invoke-interface {p1}, Lcom/subgraph/orchid/InternalCircuit;->getFinalCircuitNode()Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/subgraph/orchid/circuits/CircuitNodeImpl;->createAnonymous(Lcom/subgraph/orchid/CircuitNode;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/InternalCircuit;->connectHiddenService(Lcom/subgraph/orchid/CircuitNode;)Lcom/subgraph/orchid/HiddenServiceCircuit;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method readHandshakeDigest(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/HexDigest;
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 84
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    .line 85
    invoke-static {v0}, Lcom/subgraph/orchid/data/HexDigest;->createFromDigestBytes([B)Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    return-object p1
.end method
