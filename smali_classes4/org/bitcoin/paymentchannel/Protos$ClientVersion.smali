.class public final Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientVersion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    }
.end annotation


# static fields
.field public static final MAJOR_FIELD_NUMBER:I = 0x1

.field public static final MINOR_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIOUS_CHANNEL_CONTRACT_HASH_FIELD_NUMBER:I = 0x3

.field public static final TIME_WINDOW_SECS_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private major_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private minor_:I

.field private previousChannelContractHash_:Lcom/google/protobuf/ByteString;

.field private timeWindowSecs_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2927
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    .line 3503
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 3504
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2863
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 3033
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    .line 3065
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    .line 2864
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->initFields()V

    .line 2867
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 2871
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_4

    const/16 v5, 0x10

    if-eq v2, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_2

    const/16 v5, 0x20

    if-eq v2, v5, :cond_1

    .line 2877
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2899
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    .line 2900
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->timeWindowSecs_:J

    goto :goto_0

    .line 2894
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    .line 2895
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2889
    :cond_3
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    .line 2890
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    goto :goto_0

    .line 2884
    :cond_4
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    .line 2885
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I
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

    .line 2908
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2909
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2906
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2911
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2912
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->makeExtensionsImmutable()V

    throw p1

    .line 2911
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2912
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2834
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2840
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 3033
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    .line 3065
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    .line 2841
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 2834
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2843
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 3033
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    .line 3065
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    .line 2843
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2400()Z
    .locals 1

    .line 2834
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2602(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I
    .locals 0

    .line 2834
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    return p1
.end method

.method static synthetic access$2702(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I
    .locals 0

    .line 2834
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    return p1
.end method

.method static synthetic access$2802(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2834
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2902(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;J)J
    .locals 0

    .line 2834
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->timeWindowSecs_:J

    return-wide p1
.end method

.method static synthetic access$3002(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I
    .locals 0

    .line 2834
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .line 2847
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2917
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    .line 3028
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    .line 3029
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    .line 3030
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    const-wide/32 v0, 0x15144

    .line 3031
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->timeWindowSecs_:J

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3152
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->access$2200()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3155
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3132
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3138
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3102
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3108
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3143
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3149
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3122
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3128
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3112
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3118
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .line 2851
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .line 2955
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 2970
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$ClientVersion;",
            ">;"
        }
    .end annotation

    .line 2939
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2999
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 3067
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3071
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3072
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    .line 3073
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3075
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3076
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    .line 3077
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3079
    :cond_2
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 3080
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 3081
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3083
    :cond_3
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 3084
    iget-wide v3, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->timeWindowSecs_:J

    .line 3085
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3087
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3088
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimeWindowSecs()J
    .locals 2

    .line 3024
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->timeWindowSecs_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2858
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMajor()Z
    .locals 2

    .line 2949
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMinor()Z
    .locals 2

    .line 2964
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

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

.method public hasPreviousChannelContractHash()Z
    .locals 2

    .line 2986
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeWindowSecs()Z
    .locals 2

    .line 3013
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 2922
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 2923
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 3035
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3039
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasMajor()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3040
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    return v2

    .line 3043
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2834
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3153
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 2

    .line 3162
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3157
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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

    .line 3096
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

    .line 3049
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getSerializedSize()I

    .line 3050
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3051
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->major_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3053
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3054
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->minor_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3056
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 3057
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3059
    :cond_2
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 3060
    iget-wide v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->timeWindowSecs_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3062
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
