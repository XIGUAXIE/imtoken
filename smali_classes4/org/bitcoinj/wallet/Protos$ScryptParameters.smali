.class public final Lorg/bitcoinj/wallet/Protos$ScryptParameters;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ScryptParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScryptParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    }
.end annotation


# static fields
.field public static final N_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final P_FIELD_NUMBER:I = 0x4

.field public static final R_FIELD_NUMBER:I = 0x3

.field public static final SALT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private n_:J

.field private p_:I

.field private r_:I

.field private salt_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11487
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 12090
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    .line 12091
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11423
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 11601
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    .line 11633
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    .line 11424
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->initFields()V

    .line 11427
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 11431
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x18

    if-eq v2, v4, :cond_2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    .line 11437
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 11459
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    .line 11460
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    goto :goto_0

    .line 11454
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    .line 11455
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    goto :goto_0

    .line 11449
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    .line 11450
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    goto :goto_0

    .line 11444
    :cond_4
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    .line 11445
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;
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

    .line 11468
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 11469
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11466
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11471
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11472
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->makeExtensionsImmutable()V

    throw p1

    .line 11471
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11472
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11394
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 11400
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 11601
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    .line 11633
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    .line 11401
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 11394
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 11403
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 11601
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    .line 11633
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    .line 11403
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$13100()Z
    .locals 1

    .line 11394
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13302(Lorg/bitcoinj/wallet/Protos$ScryptParameters;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 11394
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$13402(Lorg/bitcoinj/wallet/Protos$ScryptParameters;J)J
    .locals 0

    .line 11394
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    return-wide p1
.end method

.method static synthetic access$13502(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I
    .locals 0

    .line 11394
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    return p1
.end method

.method static synthetic access$13602(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I
    .locals 0

    .line 11394
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    return p1
.end method

.method static synthetic access$13702(Lorg/bitcoinj/wallet/Protos$ScryptParameters;I)I
    .locals 0

    .line 11394
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .line 11407
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11477
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 11596
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    const-wide/16 v0, 0x4000

    .line 11597
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    const/16 v0, 0x8

    .line 11598
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    const/4 v0, 0x1

    .line 11599
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11720
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->access$12900()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11723
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11700
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11706
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11670
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11676
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11711
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11717
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11690
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11696
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11680
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11686
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 11394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 11394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters;
    .locals 1

    .line 11411
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->defaultInstance:Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    return-object v0
.end method

.method public getN()J
    .locals 2

    .line 11546
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    return-wide v0
.end method

.method public getP()I
    .locals 1

    .line 11592
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$ScryptParameters;",
            ">;"
        }
    .end annotation

    .line 11499
    sget-object v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getR()I
    .locals 1

    .line 11569
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    return v0
.end method

.method public getSalt()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 11523
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 11635
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 11639
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 11640
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    .line 11641
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11643
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 11644
    iget-wide v3, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    .line 11645
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11647
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 11648
    iget v3, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    .line 11649
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11651
    :cond_3
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 11652
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    .line 11653
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11655
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11656
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 11418
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasN()Z
    .locals 2

    .line 11536
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

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

.method public hasP()Z
    .locals 2

    .line 11582
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

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

.method public hasR()Z
    .locals 2

    .line 11559
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

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

.method public hasSalt()Z
    .locals 2

    .line 11513
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

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

    .line 11482
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$12700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$ScryptParameters;

    const-class v2, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    .line 11483
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 11603
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 11607
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->hasSalt()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11608
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    return v2

    .line 11611
    :cond_2
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 11394
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11721
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 2

    .line 11730
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 11394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->toBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 11394
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->toBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;
    .locals 1

    .line 11725
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->newBuilder(Lorg/bitcoinj/wallet/Protos$ScryptParameters;)Lorg/bitcoinj/wallet/Protos$ScryptParameters$Builder;

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

    .line 11664
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

    .line 11617
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getSerializedSize()I

    .line 11618
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 11619
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->salt_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 11621
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 11622
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->n_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11624
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 11625
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->r_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11627
    :cond_2
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 11628
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->p_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 11630
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ScryptParameters;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
