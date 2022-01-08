.class public final Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$TransactionSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$TransactionSignerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private className_:Ljava/lang/Object;

.field private data_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13826
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 13940
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 14040
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 13827
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 13832
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 13940
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 14040
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 13833
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 13809
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$16200()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13809
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13840
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 13815
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$15900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 13836
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->access$16400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 2

    .line 13866
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    .line 13867
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 13868
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 4

    .line 13874
    new-instance v0, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 13875
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 13880
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->access$16602(Lorg/bitcoinj/wallet/Protos$TransactionSigner;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 13884
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->access$16702(Lorg/bitcoinj/wallet/Protos$TransactionSigner;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 13885
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->access$16802(Lorg/bitcoinj/wallet/Protos$TransactionSigner;I)I

    .line 13886
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clear()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13844
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 13845
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 13846
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    .line 13847
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 13848
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearClassName()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 14017
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    .line 14018
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 14019
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->onChanged()V

    return-object p0
.end method

.method public clearData()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 14085
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    .line 14086
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 14087
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

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

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->clone()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 2

    .line 13853
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->create()Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .line 13959
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 13960
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 13961
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 13963
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 13964
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13965
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 13969
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 13981
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 13982
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 13983
    check-cast v0, Ljava/lang/String;

    .line 13984
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13986
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    return-object v0

    .line 13989
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 14059
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 13809
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    .locals 1

    .line 13862
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 13858
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$15900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasClassName()Z
    .locals 2

    .line 13949
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasData()Z
    .locals 2

    .line 14049
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

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

    .line 13820
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$16000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    const-class v2, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    .line 13821
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 13914
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->hasClassName()Z

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

    .line 13809
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 13809
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

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

    .line 13809
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

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

    .line 13809
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 13809
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

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

    .line 13809
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 13927
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 13933
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13929
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$TransactionSigner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13930
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 13933
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13891
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    if-eqz v0, :cond_0

    .line 13892
    check-cast p1, Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    move-result-object p1

    return-object p1

    .line 13894
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    .line 13900
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$TransactionSigner;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 13901
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->hasClassName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13902
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    .line 13903
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->access$16600(Lorg/bitcoinj/wallet/Protos$TransactionSigner;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 13904
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->onChanged()V

    .line 13906
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13907
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;

    .line 13909
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 14004
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    .line 14005
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 14006
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 14002
    throw p1
.end method

.method public setClassNameBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 14034
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    .line 14035
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->className_:Ljava/lang/Object;

    .line 14036
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 14032
    throw p1
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 14072
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->bitField0_:I

    .line 14073
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 14074
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$TransactionSigner$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 14070
    throw p1
.end method
