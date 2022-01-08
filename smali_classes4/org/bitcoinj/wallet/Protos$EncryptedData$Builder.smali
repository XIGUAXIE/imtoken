.class public final Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$EncryptedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$EncryptedDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

.field private initialisationVector_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 923
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1039
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 1090
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 924
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 929
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1039
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 1090
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 930
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 906
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1400()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 906
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->create()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 937
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 912
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 933
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->access$1600()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->build()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 2

    .line 963
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 965
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 4

    .line 971
    new-instance v0, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 972
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 977
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->access$1802(Lorg/bitcoinj/wallet/Protos$EncryptedData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 981
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->access$1902(Lorg/bitcoinj/wallet/Protos$EncryptedData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 982
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->access$2002(Lorg/bitcoinj/wallet/Protos$EncryptedData;I)I

    .line 983
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clear()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clear()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clear()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clear()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 941
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 942
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 943
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    .line 944
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 945
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearEncryptedPrivateKey()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 1135
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    .line 1136
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 1137
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInitialisationVector()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 1084
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    .line 1085
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 1086
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

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

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->clone()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 2

    .line 950
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->create()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$EncryptedData;
    .locals 1

    .line 959
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 955
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1109
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInitialisationVector()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1058
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasEncryptedPrivateKey()Z
    .locals 2

    .line 1099
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

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

    .line 1048
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

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

    .line 917
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    const-class v2, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    .line 918
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1009
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->hasInitialisationVector()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->hasEncryptedPrivateKey()Z

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

    .line 906
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 906
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

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

    .line 906
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

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

    .line 906
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 906
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

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

    .line 906
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1026
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$EncryptedData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$EncryptedData;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1032
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1028
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$EncryptedData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1029
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1032
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 988
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    if-eqz v0, :cond_0

    .line 989
    check-cast p1, Lorg/bitcoinj/wallet/Protos$EncryptedData;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object p1

    return-object p1

    .line 991
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$EncryptedData;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    .line 997
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 998
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->hasInitialisationVector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->setInitialisationVector(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    .line 1001
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->hasEncryptedPrivateKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1002
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->setEncryptedPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    .line 1004
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setEncryptedPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1122
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    .line 1123
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->encryptedPrivateKey_:Lcom/google/protobuf/ByteString;

    .line 1124
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1120
    throw p1
.end method

.method public setInitialisationVector(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1071
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->bitField0_:I

    .line 1072
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->initialisationVector_:Lcom/google/protobuf/ByteString;

    .line 1073
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1069
    throw p1
.end method
