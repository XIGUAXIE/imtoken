.class public final Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerVersion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    }
.end annotation


# static fields
.field public static final MAJOR_FIELD_NUMBER:I = 0x1

.field public static final MINOR_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private major_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private minor_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3628
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    .line 4006
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 4007
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3574
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 3678
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    .line 3704
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    .line 3575
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->initFields()V

    .line 3578
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 3582
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    .line 3588
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3600
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    .line 3601
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    goto :goto_0

    .line 3595
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    .line 3596
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I
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

    .line 3609
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3610
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3607
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3612
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3613
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->makeExtensionsImmutable()V

    throw p1

    .line 3612
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3613
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3545
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3551
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 3678
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    .line 3704
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    .line 3552
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 3545
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3554
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 3678
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    .line 3704
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    .line 3554
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3600()Z
    .locals 1

    .line 3545
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3802(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I
    .locals 0

    .line 3545
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    return p1
.end method

.method static synthetic access$3902(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I
    .locals 0

    .line 3545
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    return p1
.end method

.method static synthetic access$4002(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;I)I
    .locals 0

    .line 3545
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .line 3558
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3618
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    .line 3675
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    .line 3676
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3783
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->access$3400()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3786
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3763
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3769
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3733
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3739
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3774
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3780
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3753
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3759
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3743
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3749
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3545
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3545
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .line 3562
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .line 3656
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 3671
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$ServerVersion;",
            ">;"
        }
    .end annotation

    .line 3640
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3706
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3710
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3711
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    .line 3712
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3714
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3715
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    .line 3716
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3718
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3719
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3569
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMajor()Z
    .locals 2

    .line 3650
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

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

    .line 3665
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 3623
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$3200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 3624
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 3680
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3684
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->hasMajor()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3685
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    return v2

    .line 3688
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3545
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3545
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3545
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3784
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 2

    .line 3793
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3545
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3545
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;
    .locals 1

    .line 3788
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

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

    .line 3727
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

    .line 3694
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getSerializedSize()I

    .line 3695
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3696
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->major_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3698
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3699
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->minor_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3701
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
