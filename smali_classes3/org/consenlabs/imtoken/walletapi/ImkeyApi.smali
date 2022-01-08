.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.super Ljava/lang/Object;
.source "ImkeyApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParamOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParamOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWalletOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWalletOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResultOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParamOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResultOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParamOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponse;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$CommonResponseOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponseOrBuilder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyAction;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ImkeyActionOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_api_AddressParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_AddressParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_AddressResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_AddressResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_BitcoinWallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_BitcoinWallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_CommonResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_CommonResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_EosWallet_PubKeyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_EosWallet_PubKeyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_EosWallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_EosWallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_ErrorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_ErrorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_ExternalAddressParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_ExternalAddressParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_ExternalAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_ExternalAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_ImkeyAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_ImkeyAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_InitImKeyCoreXParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_InitImKeyCoreXParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_PubKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_PubKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_api_PubKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_api_PubKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "\n\u000fimkey_proto\u0012\u0003api\u001a\u0019google/protobuf/any.proto\"B\n\u000bImkeyAction\u0012\u000e\n\u0006method\u0018\u0001 \u0001(\t\u0012#\n\u0005param\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\"1\n\rErrorResponse\u0012\u0011\n\tisSuccess\u0018\u0001 \u0001(\u0008\u0012\r\n\u0005error\u0018\u0002 \u0001(\t\" \n\u000eCommonResponse\u0012\u000e\n\u0006result\u0018\u0001 \u0001(\t\"R\n\u000cAddressParam\u0012\u0011\n\tchainType\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004path\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007network\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008isSegWit\u0018\u0004 \u0001(\u0008\"A\n\rAddressResult\u0012\u000c\n\u0004path\u0018\u0001 \u0001(\t\u0012\u0011\n\tchainType\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007address\u0018\u0003 \u0001(\t\"Q\n\u000bPubKeyParam\u0012\u0011\n\tchainType\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004path\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007network\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008isSegWit\u0018\u0004 \u0001(\t\"T\n\u000cPubKeyResult\u0012\u000c\n\u0004path\u0018\u0001 \u0001(\t\u0012\u0011\n\tchainType\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006pubKey\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bderivedMode\u0018\u0004 \u0001(\t\"E\n\u000fExternalAddress\u0012\u000f\n\u0007address\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bderivedPath\u0018\u0002 \u0001(\t\u0012\u000c\n\u0004type\u0018\u0003 \u0001(\t\"\u0081\u0001\n\rBitcoinWallet\u0012\u000c\n\u0004path\u0018\u0001 \u0001(\t\u0012\u0011\n\tchainType\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007address\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007encXPub\u0018\u0004 \u0001(\t\u0012-\n\u000fexternalAddress\u0018\u0005 \u0001(\u000b2\u0014.ExternalAddress\"\u00a2\u0001\n\tEosWallet\u0012\u0011\n\tchainType\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007address\u0018\u0002 \u0001(\t\u0012-\n\npublicKeys\u0018\u0003 \u0003(\u000b2\u0019.api.EosWallet.PubKeyInfo\u001aB\n\nPubKeyInfo\u0012\u000c\n\u0004path\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bderivedMode\u0018\u0002 \u0001(\t\u0012\u0011\n\tpublicKey\u0018\u0003 \u0001(\t\"m\n\u0014ExternalAddressParam\u0012\u000c\n\u0004path\u0018\u0001 \u0001(\t\u0012\u0011\n\tchainType\u0018\u0002 \u0001(\t\u0012\u000f\n\u0007network\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006segWit\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bexternalIdx\u0018\u0005 \u0001(\u0005\"t\n\u0013InitImKeyCoreXParam\u0012\u000f\n\u0007fileDir\u0018\u0001 \u0001(\t\u0012\u0015\n\rxpubCommonKey\u0018\u0002 \u0001(\t\u0012\u0014\n\u000cxpubCommonIv\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007isDebug\u0018\u0004 \u0001(\u0008\u0012\u000e\n\u0006system\u0018\u0005 \u0001(\tb\u0006proto3"

    .line 12077
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12111
    invoke-static {}, Lcom/google/protobuf/AnyProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 12109
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 12114
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ImkeyAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12115
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Method"

    const-string v5, "Param"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ImkeyAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12120
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ErrorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12121
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "IsSuccess"

    const-string v3, "Error"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ErrorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12126
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_CommonResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12127
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Result"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_CommonResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12132
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_AddressParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12133
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "IsSegWit"

    const-string v3, "Network"

    const-string v5, "Path"

    const-string v6, "ChainType"

    filled-new-array {v6, v5, v3, v2}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_AddressParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12138
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_AddressResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12139
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v7, "Address"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_AddressResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12144
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_PubKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12145
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v6, v5, v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_PubKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12150
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_PubKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12151
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "DerivedMode"

    const-string v8, "PubKey"

    filled-new-array {v5, v6, v8, v2}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_PubKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12156
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ExternalAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12157
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "DerivedPath"

    const-string v9, "Type"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ExternalAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12162
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_BitcoinWallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12163
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "EncXPub"

    const-string v9, "ExternalAddress"

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_BitcoinWallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12168
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12169
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v8, "PublicKeys"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12173
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12174
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_PubKeyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12175
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v4, "PublicKey"

    filled-new-array {v5, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_PubKeyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12180
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ExternalAddressParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12181
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "SegWit"

    const-string v4, "ExternalIdx"

    filled-new-array {v5, v6, v3, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ExternalAddressParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12186
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_InitImKeyCoreXParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 12187
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "FileDir"

    const-string v3, "XpubCommonKey"

    const-string v4, "XpubCommonIv"

    const-string v5, "IsDebug"

    const-string v6, "System"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_InitImKeyCoreXParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 12191
    invoke-static {}, Lcom/google/protobuf/AnyProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ImkeyAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ImkeyAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ExternalAddress_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ExternalAddress_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_BitcoinWallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_BitcoinWallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ErrorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ErrorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$13500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_PubKeyInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$13600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_EosWallet_PubKeyInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$16300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ExternalAddressParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$16400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_ExternalAddressParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_InitImKeyCoreXParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$18200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_InitImKeyCoreXParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_CommonResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_CommonResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_AddressParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_AddressParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_AddressResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_AddressResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_PubKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_PubKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_PubKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->internal_static_api_PubKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 12072
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
