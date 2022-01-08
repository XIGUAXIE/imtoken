.class public final Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$PaymentAckOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$PaymentAckOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private info_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7997
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 8096
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 7998
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 8003
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 8096
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 8004
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 7980
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$9700()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 1

    .line 7980
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 1

    .line 8011
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7986
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 8007
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->access$9900()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
    .locals 2

    .line 8035
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    .line 8036
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 8037
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
    .locals 3

    .line 8043
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 8044
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8049
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->info_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->access$10102(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 8050
    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->access$10202(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;I)I

    .line 8051
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 1

    .line 8015
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 8016
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 8017
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearInfo()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 1

    .line 8141
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->bitField0_:I

    .line 8142
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getInfo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 8143
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 2

    .line 8022
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7980
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
    .locals 1

    .line 8031
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8027
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8115
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->info_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasInfo()Z
    .locals 2

    .line 8105
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->bitField0_:I

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

    .line 7991
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$9500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    .line 7992
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7980
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7980
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7980
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7980
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7980
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7980
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 8083
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 8089
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8085
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8086
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 8089
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 1

    .line 8056
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    if-eqz v0, :cond_0

    .line 8057
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object p1

    return-object p1

    .line 8059
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 1

    .line 8065
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 8066
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8067
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getInfo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->setInfo(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    .line 8069
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setInfo(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 8128
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->bitField0_:I

    .line 8129
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 8130
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 8126
    throw p1
.end method
