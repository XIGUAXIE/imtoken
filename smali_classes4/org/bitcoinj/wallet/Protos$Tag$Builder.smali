.class public final Lorg/bitcoinj/wallet/Protos$Tag$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TagOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$Tag$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TagOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private tag_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13207
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 13325
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13401
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 13208
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 13213
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 13325
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13401
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 13214
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 13190
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$15200()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13190
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->create()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13221
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 13196
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$14900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 13217
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->access$15400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->build()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->build()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 2

    .line 13247
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    .line 13248
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Tag;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 13249
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 4

    .line 13255
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Tag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$Tag;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 13256
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 13261
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Tag;->access$15602(Lorg/bitcoinj/wallet/Protos$Tag;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 13265
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Tag;->access$15702(Lorg/bitcoinj/wallet/Protos$Tag;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 13266
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$Tag;->access$15802(Lorg/bitcoinj/wallet/Protos$Tag;I)I

    .line 13267
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13225
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 13226
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13227
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    .line 13228
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 13229
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearData()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13430
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    .line 13431
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Tag;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 13432
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTag()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13382
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    .line 13383
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Tag;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13384
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

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

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 2

    .line 13234
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->create()Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13412
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Tag;
    .locals 1

    .line 13243
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 13239
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$14900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 13336
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13337
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13338
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13340
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13341
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13342
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13346
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13354
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13355
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13356
    check-cast v0, Ljava/lang/String;

    .line 13357
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13359
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    return-object v0

    .line 13362
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 13406
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

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

    .line 13330
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

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

    .line 13201
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$15000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Tag;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    .line 13202
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 13295
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->hasTag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 13299
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
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

    .line 13190
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 13190
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

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

    .line 13190
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

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

    .line 13190
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13190
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

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

    .line 13190
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 13312
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Tag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Tag;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 13318
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13314
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$Tag;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13315
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 13318
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13272
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Tag;

    if-eqz v0, :cond_0

    .line 13273
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Tag;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    move-result-object p1

    return-object p1

    .line 13275
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Tag;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    .line 13281
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Tag;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Tag;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 13282
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Tag;->hasTag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13283
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    .line 13284
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Tag;->access$15600(Lorg/bitcoinj/wallet/Protos$Tag;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13285
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->onChanged()V

    .line 13287
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Tag;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13288
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Tag;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;

    .line 13290
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Tag;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13421
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    .line 13422
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 13423
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 13419
    throw p1
.end method

.method public setTag(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13373
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    .line 13374
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13375
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 13371
    throw p1
.end method

.method public setTagBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Tag$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 13395
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->bitField0_:I

    .line 13396
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->tag_:Ljava/lang/Object;

    .line 13397
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Tag$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 13393
    throw p1
.end method
