.class public final Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "X509Certificates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    }
.end annotation


# static fields
.field public static final CERTIFICATE_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$X509Certificates;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

.field private static final serialVersionUID:J


# instance fields
.field private certificate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3393
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    .line 3786
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    .line 3787
    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3338
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 3445
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    .line 3464
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    .line 3339
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->initFields()V

    .line 3342
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 3346
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 3352
    invoke-virtual {p0, p1, v0, p2, v4}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_2

    .line 3360
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 3363
    :cond_2
    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 3371
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3372
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3369
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_4

    .line 3375
    iget-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    .line 3377
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3378
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_6

    .line 3375
    iget-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    .line 3377
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3378
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3309
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3315
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 3445
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    .line 3464
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    .line 3316
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 3309
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3318
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 3445
    iput-byte p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    .line 3464
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    .line 3318
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$4400()Z
    .locals 1

    .line 3309
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Ljava/util/List;
    .locals 0

    .line 3309
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3309
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1

    .line 3322
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3383
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$3900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 3443
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3544
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->access$4200()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3547
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3524
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3530
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3494
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3500
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3535
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3541
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3514
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3520
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3504
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3510
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object p0
.end method


# virtual methods
.method public getCertificate(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3439
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getCertificateCount()I
    .locals 1

    .line 3429
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCertificateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 3419
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3309
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3309
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates;
    .locals 1

    .line 3326
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$X509Certificates;",
            ">;"
        }
    .end annotation

    .line 3405
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 3466
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3472
    :goto_0
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3473
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    .line 3474
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 3477
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getCertificateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 3479
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3480
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3333
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 3388
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    .line 3389
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3447
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3451
    :cond_1
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3309
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3309
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3309
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3545
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 2

    .line 3554
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3309
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3309
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;
    .locals 1

    .line 3549
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$X509Certificates;)Lorg/bitcoin/protocols/payments/Protos$X509Certificates$Builder;

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

    .line 3488
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3457
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getSerializedSize()I

    const/4 v0, 0x0

    .line 3458
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3459
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->certificate_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3461
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$X509Certificates;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
