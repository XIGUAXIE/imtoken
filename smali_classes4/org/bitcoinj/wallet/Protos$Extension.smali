.class public final Lorg/bitcoinj/wallet/Protos$Extension;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extension"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MANDATORY_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private id_:Ljava/lang/Object;

.field private mandatory_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12253
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Extension$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    .line 12853
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

    .line 12854
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Extension;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 12370
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    .line 12407
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    .line 12194
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->initFields()V

    .line 12197
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 12201
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x18

    if-eq v2, v4, :cond_1

    .line 12207
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$Extension;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12225
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    .line 12226
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    goto :goto_0

    .line 12220
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    .line 12221
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 12214
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 12215
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    .line 12216
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;
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

    .line 12234
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 12235
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 12232
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12237
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 12238
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->makeExtensionsImmutable()V

    throw p1

    .line 12237
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 12238
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12164
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 12170
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 12370
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    .line 12407
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    .line 12171
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 12164
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 12173
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 12370
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    .line 12407
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    .line 12173
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$14300()Z
    .locals 1

    .line 12164
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Extension;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$14500(Lorg/bitcoinj/wallet/Protos$Extension;)Ljava/lang/Object;
    .locals 0

    .line 12164
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14502(Lorg/bitcoinj/wallet/Protos$Extension;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12164
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14602(Lorg/bitcoinj/wallet/Protos$Extension;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 12164
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$14702(Lorg/bitcoinj/wallet/Protos$Extension;Z)Z
    .locals 0

    .line 12164
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    return p1
.end method

.method static synthetic access$14802(Lorg/bitcoinj/wallet/Protos$Extension;I)I
    .locals 0

    .line 12164
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1

    .line 12177
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12243
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$13800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const-string v0, ""

    .line 12366
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    .line 12367
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    .line 12368
    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12490
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->access$14100()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12493
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12470
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12476
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12440
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12446
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12481
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12487
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12460
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12466
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12450
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12456
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Extension;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12335
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 12164
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12164
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1

    .line 12181
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Extension;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 12289
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    .line 12290
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12291
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 12293
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12295
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12296
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12297
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 12311
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    .line 12312
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12313
    check-cast v0, Ljava/lang/String;

    .line 12314
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12316
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->id_:Ljava/lang/Object;

    return-object v0

    .line 12319
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMandatory()Z
    .locals 1

    .line 12362
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Extension;",
            ">;"
        }
    .end annotation

    .line 12265
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 12409
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 12413
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 12415
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12417
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 12418
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    .line 12419
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12421
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 12422
    iget-boolean v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    .line 12423
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12425
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 12426
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 12188
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 12329
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .line 12279
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMandatory()Z
    .locals 2

    .line 12350
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

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

    .line 12248
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$13900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Extension;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 12249
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 12372
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 12376
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->hasId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12377
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    return v2

    .line 12380
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->hasData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 12381
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    return v2

    .line 12384
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->hasMandatory()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12385
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    return v2

    .line 12388
    :cond_4
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12164
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12164
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12164
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12491
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2

    .line 12500
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12164
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->toBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12164
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->toBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12495
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->newBuilder(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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

    .line 12434
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

    .line 12394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getSerializedSize()I

    .line 12395
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 12396
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12398
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 12399
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12401
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 12402
    iget-boolean v1, p0, Lorg/bitcoinj/wallet/Protos$Extension;->mandatory_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 12404
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
