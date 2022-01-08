.class public final Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5851
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 5954
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5852
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 5857
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 5954
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5858
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 5834
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$6600()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .line 5834
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .line 5865
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5840
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 5861
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->access$6800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 2

    .line 5889
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    .line 5890
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 5891
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 3

    .line 5897
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 5898
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5903
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->access$7002(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 5904
    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->access$7102(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;I)I

    .line 5905
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .line 5869
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 5870
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5871
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearSignature()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .line 5983
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    .line 5984
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5985
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 2

    .line 5876
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5834
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1

    .line 5885
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5881
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5965
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasSignature()Z
    .locals 2

    .line 5959
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

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

    .line 5845
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$6400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    .line 5846
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 5928
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->hasSignature()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
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

    .line 5834
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 5834
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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

    .line 5834
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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

    .line 5834
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5834
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

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

    .line 5834
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 5941
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 5947
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5943
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5944
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 5947
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .line 5910
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    if-eqz v0, :cond_0

    .line 5911
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object p1

    return-object p1

    .line 5913
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    .line 5919
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 5920
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5921
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    .line 5923
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 5974
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->bitField0_:I

    .line 5975
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 5976
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 5972
    throw p1
.end method
