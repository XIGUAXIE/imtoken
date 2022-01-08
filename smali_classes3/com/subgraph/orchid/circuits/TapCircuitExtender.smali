.class public Lcom/subgraph/orchid/circuits/TapCircuitExtender;
.super Ljava/lang/Object;
.source "TapCircuitExtender.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

.field private final kex:Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

.field private final router:Lcom/subgraph/orchid/Router;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/circuits/CircuitExtender;Lcom/subgraph/orchid/Router;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    .line 20
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    .line 21
    new-instance p1, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    invoke-interface {p2}, Lcom/subgraph/orchid/Router;->getOnionKey()Lcom/subgraph/orchid/crypto/TorPublicKey;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;-><init>(Lcom/subgraph/orchid/crypto/TorPublicKey;)V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    return-void
.end method

.method private createRelayExtendCell()Lcom/subgraph/orchid/RelayCell;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createRelayCell(I)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 50
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getOnionPort()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putShort(I)V

    .line 51
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    invoke-virtual {v1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->createOnionSkin()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    .line 52
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/subgraph/orchid/data/HexDigest;->getRawBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/RelayCell;->putByteArray([B)V

    return-object v0
.end method

.method private processExtendResponse(Lcom/subgraph/orchid/RelayCell;)Lcom/subgraph/orchid/CircuitNode;
    .locals 3

    const/16 v0, 0x94

    new-array v0, v0, [B

    .line 37
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/RelayCell;->getByteArray([B)V

    const/16 p1, 0x48

    new-array p1, p1, [B

    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 41
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->kex:Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;

    invoke-virtual {v2, v0, p1, v1}, Lcom/subgraph/orchid/crypto/TorTapKeyAgreement;->deriveKeysFromHandshakeResponse([B[B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-virtual {v0, v2, p1, v1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->createNewNode(Lcom/subgraph/orchid/Router;[B[B)Lcom/subgraph/orchid/CircuitNode;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public extendTo()Lcom/subgraph/orchid/CircuitNode;
    .locals 3

    .line 25
    sget-object v0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extending to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    invoke-interface {v2}, Lcom/subgraph/orchid/Router;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with TAP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->createRelayExtendCell()Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/circuits/CircuitExtender;->sendRelayCell(Lcom/subgraph/orchid/RelayCell;)V

    .line 28
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->extender:Lcom/subgraph/orchid/circuits/CircuitExtender;

    iget-object v1, p0, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->router:Lcom/subgraph/orchid/Router;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Lcom/subgraph/orchid/circuits/CircuitExtender;->receiveRelayResponse(ILcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/RelayCell;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_0
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/TapCircuitExtender;->processExtendResponse(Lcom/subgraph/orchid/RelayCell;)Lcom/subgraph/orchid/CircuitNode;

    move-result-object v0

    return-object v0
.end method
