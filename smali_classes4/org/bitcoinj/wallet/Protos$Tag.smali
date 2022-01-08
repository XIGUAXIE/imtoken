.class public final Lorg/bitcoinj/wallet/Protos$Tag;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$Tag;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tag_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12981
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Tag$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Tag$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    .line 13440
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Tag;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$Tag;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Tag;

    .line 13441
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Tag;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12926
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 13058
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedIsInitialized:B

    .line 13088
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedSerializedSize:I

    .line 12927
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->initFields()V

    .line 12930
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 12934
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 12940
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$Tag;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 12953
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    .line 12954
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Tag;->data_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 12947
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 12948
    iget v4, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    .line 12949
    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$Tag;->tag_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12962
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 12963
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 12960
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12965
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$Tag;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 12966
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->makeExtensionsImmutable()V

    throw p1

    .line 12965
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 12966
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12897
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Tag;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 12903
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 13058
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedIsInitialized:B

    .line 13088
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedSerializedSize:I

    .line 12904
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 12897
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Tag;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 12906
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 13058
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedIsInitialized:B

    .line 13088
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedSerializedSize:I

    .line 12906
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$15400()Z
    .locals 1

    .line 12897
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$Tag;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15600(Lorg/bitcoinj/wallet/Protos$Tag;)Ljava/lang/Object;
    .locals 0

    .line 12897
    iget-object p0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->tag_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15602(Lorg/bitcoinj/wallet/Protos$Tag;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12897
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->tag_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15702(Lorg/bitcoinj/wallet/Protos$Tag;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 12897
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$15802(Lorg/bitcoinj/wallet/Protos$Tag;I)I
    .locals 0

    .line 12897
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1

    .line 12910
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Tag;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12971
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$14900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const-string v0, ""

    .line 13055
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->tag_:Ljava/lang/Object;

    .line 13056
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13167
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->access$15200()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13170
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->newBuilder()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13147
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13153
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13117
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13123
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13158
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13164
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13137
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13143
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13127
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13133
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$Tag;

    return-object p0
.end method


# virtual methods
.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13051
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 12897
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12897
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1

    .line 12914
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->defaultInstance:Lorg/bitcoinj/wallet/Protos$Tag;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$Tag;",
            ">;"
        }
    .end annotation

    .line 12993
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 13090
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 13094
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 13096
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->getTagBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13098
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 13099
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->data_:Lcom/google/protobuf/ByteString;

    .line 13100
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13102
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 13103
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedSerializedSize:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 13009
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->tag_:Ljava/lang/Object;

    .line 13010
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13011
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 13013
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13015
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13016
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13017
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->tag_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTagBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13027
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->tag_:Ljava/lang/Object;

    .line 13028
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13029
    check-cast v0, Ljava/lang/String;

    .line 13030
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13032
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->tag_:Ljava/lang/Object;

    return-object v0

    .line 13035
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 12921
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 13045
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

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

.method public hasTag()Z
    .locals 2

    .line 13003
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

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

    .line 12976
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$15000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Tag;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    .line 12977
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 13060
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 13064
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->hasTag()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13065
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedIsInitialized:B

    return v2

    .line 13068
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->hasData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13069
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedIsInitialized:B

    return v2

    .line 13072
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$Tag;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12897
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12897
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Tag;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12897
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13168
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->newBuilder()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 2

    .line 13177
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12897
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->toBuilder()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12897
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->toBuilder()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13172
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->newBuilder(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

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

    .line 13111
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

    .line 13078
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->getSerializedSize()I

    .line 13079
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 13080
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->getTagBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13082
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 13083
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13085
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
