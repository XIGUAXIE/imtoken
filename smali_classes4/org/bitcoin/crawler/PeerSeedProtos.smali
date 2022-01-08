.class public final Lorg/bitcoin/crawler/PeerSeedProtos;
.super Ljava/lang/Object;
.source "PeerSeedProtos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;,
        Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeedsOrBuilder;,
        Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;,
        Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedsOrBuilder;,
        Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;,
        Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_bitcoin_crawler_PeerSeedData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_bitcoin_crawler_PeerSeedData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_bitcoin_crawler_PeerSeeds_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_bitcoin_crawler_PeerSeeds_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_bitcoin_crawler_SignedPeerSeeds_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_bitcoin_crawler_SignedPeerSeeds_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\n\u000fpeerseeds.proto\u0012\u0013org.bitcoin.crawler\"B\n\u000cPeerSeedData\u0012\u0012\n\nip_address\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004port\u0018\u0002 \u0002(\r\u0012\u0010\n\u0008services\u0018\u0003 \u0002(\r\"\\\n\tPeerSeeds\u0012/\n\u0004seed\u0018\u0001 \u0003(\u000b2!.org.bitcoin.crawler.PeerSeedData\u0012\u0011\n\ttimestamp\u0018\u0002 \u0002(\u0004\u0012\u000b\n\u0003net\u0018\u0003 \u0002(\t\"H\n\u000fSignedPeerSeeds\u0012\u0012\n\npeer_seeds\u0018\u0001 \u0002(\u000c\u0012\u0011\n\tsignature\u0018\u0002 \u0002(\u000c\u0012\u000e\n\u0006pubkey\u0018\u0003 \u0002(\u000cB%\n\u0013org.bitcoin.crawlerB\u000ePeerSeedProtos"

    .line 2250
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2260
    new-instance v1, Lorg/bitcoin/crawler/PeerSeedProtos$1;

    invoke-direct {v1}, Lorg/bitcoin/crawler/PeerSeedProtos$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2269
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2273
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_PeerSeedData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2274
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "IpAddress"

    const-string v3, "Port"

    const-string v4, "Services"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_PeerSeedData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2279
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_PeerSeeds_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2280
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Seed"

    const-string v3, "Timestamp"

    const-string v4, "Net"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_PeerSeeds_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 2285
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_SignedPeerSeeds_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 2286
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "PeerSeeds"

    const-string v3, "Signature"

    const-string v4, "Pubkey"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_SignedPeerSeeds_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_PeerSeedData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_PeerSeedData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_PeerSeeds_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_PeerSeeds_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_SignedPeerSeeds_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->internal_static_org_bitcoin_crawler_SignedPeerSeeds_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lorg/bitcoin/crawler/PeerSeedProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2245
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
