.class public final Lorg/bitcoinj/wallet/Protos$EncryptedData;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    }
.end annotation


# static fields
.field public static final ENCRYPTED_PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final INITIALISATION_VECTOR_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

.field private initialisationVector_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 715
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedData$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    .line 1145
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    .line 1146
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 661
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 781
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedIsInitialized:B

    .line 811
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedSerializedSize:I

    .line 662
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->initFields()V

    .line 665
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 669
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 675
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 687
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    .line 688
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 682
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    .line 683
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->initialisationVector_:Lcom/google/protobuf/ByteString;
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

    .line 696
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 697
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 694
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 700
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->makeExtensionsImmutable()V

    throw p1

    .line 699
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 700
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 632
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 638
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 781
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedIsInitialized:B

    .line 811
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedSerializedSize:I

    .line 639
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 632
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 641
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 781
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedIsInitialized:B

    .line 811
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedSerializedSize:I

    .line 641
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 632
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/bitcoinj/wallet/Protos$EncryptedData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->initialisationVector_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1902(Lorg/bitcoinj/wallet/Protos$EncryptedData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2002(Lorg/bitcoinj/wallet/Protos$EncryptedData;I)I
    .locals 0

    .line 632
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1

    .line 645
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 705
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 778
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 779
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 890
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->access$1400()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 893
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->newBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 840
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 846
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 881
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 850
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 856
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1

    .line 649
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->defaultInstance:Lorg/bitcoinj/wallet/Protos$EncryptedData;

    return-object v0
.end method

.method public getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 774
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInitialisationVector()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 751
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->initialisationVector_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$EncryptedData;",
            ">;"
        }
    .end annotation

    .line 727
    sget-object v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 813
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 817
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 818
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 819
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 821
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 822
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 823
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 825
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 826
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 656
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasEncryptedPrivateKey()Z
    .locals 2

    .line 764
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

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

.method public hasInitialisationVector()Z
    .locals 2

    .line 741
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

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

    .line 710
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    const-class v2, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    .line 711
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 783
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 787
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->hasInitialisationVector()Z

    move-result v0

    if-nez v0, :cond_2

    .line 788
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedIsInitialized:B

    return v2

    .line 791
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->hasEncryptedPrivateKey()Z

    move-result v0

    if-nez v0, :cond_3

    .line 792
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedIsInitialized:B

    return v2

    .line 795
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 632
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 891
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->newBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 2

    .line 900
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 632
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 895
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->newBuilder(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

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

    .line 834
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

    .line 801
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getSerializedSize()I

    .line 802
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 803
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->initialisationVector_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 805
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 806
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 808
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
