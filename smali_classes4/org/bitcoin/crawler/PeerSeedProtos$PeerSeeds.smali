.class public final Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PeerSeedProtos.java"

# interfaces
.implements Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeerSeeds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    }
.end annotation


# static fields
.field public static final NET_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEED_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private net_:Ljava/lang/Object;

.field private seed_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 824
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$1;

    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$1;-><init>()V

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    .line 1634
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    .line 1635
    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 758
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 945
    iput-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedIsInitialized:B

    .line 984
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedSerializedSize:I

    .line 759
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->initFields()V

    .line 762
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_7

    .line 766
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_1

    .line 772
    invoke-virtual {p0, p1, v0, p2, v4}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 792
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 793
    iget v5, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    .line 794
    iput-object v4, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->net_:Ljava/lang/Object;

    goto :goto_0

    .line 787
    :cond_2
    iget v4, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    .line 788
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->timestamp_:J

    goto :goto_0

    :cond_3
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_4

    .line 780
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 783
    :cond_4
    iget-object v4, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    sget-object v5, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 802
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 803
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 800
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_6

    .line 806
    iget-object p2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    .line 808
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 809
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->makeExtensionsImmutable()V

    throw p1

    :cond_7
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_8

    .line 806
    iget-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    .line 808
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 809
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 729
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 735
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 945
    iput-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedIsInitialized:B

    .line 984
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedSerializedSize:I

    .line 736
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0

    .line 729
    invoke-direct {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 738
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 945
    iput-byte p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedIsInitialized:B

    .line 984
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedSerializedSize:I

    .line 738
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 729
    sget-boolean v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/util/List;
    .locals 0

    .line 729
    iget-object p0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 729
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;J)J
    .locals 0

    .line 729
    iput-wide p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$2000(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Ljava/lang/Object;
    .locals 0

    .line 729
    iget-object p0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->net_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 729
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->net_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2102(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;I)I
    .locals 0

    .line 729
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    return p1
.end method

.method static synthetic access$2200()Z
    .locals 1

    .line 729
    sget-boolean v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1

    .line 742
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 814
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 941
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 942
    iput-wide v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->timestamp_:J

    const-string v0, ""

    .line 943
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->net_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1067
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->access$1400()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1070
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1047
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1017
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1023
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1058
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1064
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1037
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1043
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1027
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1033
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 1

    .line 746
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    return-object v0
.end method

.method public getNet()Ljava/lang/String;
    .locals 2

    .line 910
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->net_:Ljava/lang/Object;

    .line 911
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 912
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 914
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 916
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 917
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    iput-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->net_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNetBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 928
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->net_:Ljava/lang/Object;

    .line 929
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 930
    check-cast v0, Ljava/lang/String;

    .line 931
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 933
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->net_:Ljava/lang/Object;

    return-object v0

    .line 936
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;",
            ">;"
        }
    .end annotation

    .line 836
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSeed(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1

    .line 865
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p1
.end method

.method public getSeedCount()I
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSeedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            ">;"
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    return-object v0
.end method

.method public getSeedOrBuilder(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;
    .locals 1

    .line 872
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;

    return-object p1
.end method

.method public getSeedOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;",
            ">;"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 986
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 990
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 991
    iget-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    .line 992
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    :cond_1
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    and-int/2addr v0, v3

    const/4 v2, 0x2

    if-ne v0, v3, :cond_2

    .line 995
    iget-wide v3, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->timestamp_:J

    .line 996
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 998
    :cond_2
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x3

    .line 1000
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getNetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1002
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 1003
    iput v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedSerializedSize:I

    return v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 895
    iget-wide v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->timestamp_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 753
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasNet()Z
    .locals 2

    .line 904
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimestamp()Z
    .locals 2

    .line 885
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 819
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    const-class v2, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    .line 820
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 947
    iget-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 951
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->hasTimestamp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 952
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedIsInitialized:B

    return v2

    .line 955
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->hasNet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 956
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedIsInitialized:B

    return v2

    :cond_3
    const/4 v0, 0x0

    .line 959
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getSeedCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 960
    invoke-virtual {p0, v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getSeed(I)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    .line 961
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedIsInitialized:B

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 965
    :cond_5
    iput-byte v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 729
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1068
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 2

    .line 1077
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;
    .locals 1

    .line 1072
    invoke-static {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->newBuilder(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1011
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 971
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getSerializedSize()I

    const/4 v0, 0x0

    .line 972
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 973
    iget-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->seed_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 975
    :cond_0
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    and-int/2addr v0, v2

    const/4 v1, 0x2

    if-ne v0, v2, :cond_1

    .line 976
    iget-wide v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->timestamp_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 978
    :cond_1
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 979
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getNetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 981
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
