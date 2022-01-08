.class public final Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
.super Lcom/google/protobuf/GeneratedMessage;
.source "PeerSeedProtos.java"

# interfaces
.implements Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeerSeedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    }
.end annotation


# static fields
.field public static final IP_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field public static final SERVICES_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ipAddress_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private port_:I

.field private services_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$1;

    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$1;-><init>()V

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    .line 660
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    .line 661
    invoke-direct {v0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 232
    iput-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedIsInitialized:B

    .line 269
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedSerializedSize:I

    .line 80
    invoke-direct {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->initFields()V

    .line 83
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    const/16 v4, 0x18

    if-eq v2, v4, :cond_1

    .line 93
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 111
    :cond_1
    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    .line 112
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->services_:I

    goto :goto_0

    .line 106
    :cond_2
    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    .line 107
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->port_:I

    goto :goto_0

    .line 100
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 101
    iget v4, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    .line 102
    iput-object v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->ipAddress_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 120
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 118
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 124
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->makeExtensionsImmutable()V

    throw p1

    .line 123
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 124
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 56
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 232
    iput-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedIsInitialized:B

    .line 269
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedSerializedSize:I

    .line 57
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 232
    iput-byte p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedIsInitialized:B

    .line 269
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedSerializedSize:I

    .line 59
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;I)I
    .locals 0

    .line 50
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 50
    sget-boolean v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->ipAddress_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    iput-object p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->ipAddress_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;I)I
    .locals 0

    .line 50
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->port_:I

    return p1
.end method

.method static synthetic access$902(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;I)I
    .locals 0

    .line 50
    iput p1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->services_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1

    .line 63
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 129
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const-string v0, ""

    .line 228
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->ipAddress_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->port_:I

    .line 230
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->services_:I

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 352
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->access$300()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 355
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;->mergeFrom(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 302
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 308
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 312
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 318
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;
    .locals 1

    .line 67
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->defaultInstance:Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->ipAddress_:Ljava/lang/Object;

    .line 168
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 169
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 171
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 173
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iput-object v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->ipAddress_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getIpAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->ipAddress_:Ljava/lang/Object;

    .line 186
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 190
    iput-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->ipAddress_:Ljava/lang/Object;

    return-object v0

    .line 193
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
            "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;",
            ">;"
        }
    .end annotation

    .line 151
    sget-object v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 209
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->port_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 271
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 275
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 277
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getIpAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_1
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 280
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->port_:I

    .line 281
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 283
    :cond_2
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 284
    iget v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->services_:I

    .line 285
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 287
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    iput v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedSerializedSize:I

    return v0
.end method

.method public getServices()I
    .locals 1

    .line 224
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->services_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasIpAddress()Z
    .locals 2

    .line 161
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPort()Z
    .locals 2

    .line 203
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

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

.method public hasServices()Z
    .locals 2

    .line 218
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 134
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    const-class v2, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 234
    iget-byte v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 238
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->hasIpAddress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedIsInitialized:B

    return v2

    .line 242
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->hasPort()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedIsInitialized:B

    return v2

    .line 246
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->hasServices()Z

    move-result v0

    if-nez v0, :cond_4

    .line 247
    iput-byte v2, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedIsInitialized:B

    return v2

    .line 250
    :cond_4
    iput-byte v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 353
    invoke-static {}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->newBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 2

    .line 362
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;
    .locals 1

    .line 357
    invoke-static {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->newBuilder(Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData$Builder;

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

    .line 296
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getSerializedSize()I

    .line 257
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getIpAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 260
    :cond_0
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 261
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->port_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 263
    :cond_1
    iget v0, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 264
    iget v1, p0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->services_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 266
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
