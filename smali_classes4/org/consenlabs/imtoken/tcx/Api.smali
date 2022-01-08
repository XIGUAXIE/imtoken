.class public final Lorg/consenlabs/imtoken/tcx/Api;
.super Ljava/lang/Object;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParam;,
        Lorg/consenlabs/imtoken/tcx/Api$WalletKeyParamOrBuilder;,
        Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParam;,
        Lorg/consenlabs/imtoken/tcx/Api$ExportPrivateKeyParamOrBuilder;,
        Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;,
        Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParamOrBuilder;,
        Lorg/consenlabs/imtoken/tcx/Api$Response;,
        Lorg/consenlabs/imtoken/tcx/Api$ResponseOrBuilder;,
        Lorg/consenlabs/imtoken/tcx/Api$TcxAction;,
        Lorg/consenlabs/imtoken/tcx/Api$TcxActionOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_ExportPrivateKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_ExportPrivateKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_org_consenlabs_imtoken_tcx_InitTokenCoreXParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_InitTokenCoreXParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_org_consenlabs_imtoken_tcx_Response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_Response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_org_consenlabs_imtoken_tcx_TcxAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_TcxAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_org_consenlabs_imtoken_tcx_WalletKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_WalletKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "\n\tapi.proto\u0012\u001aorg.consenlabs.imtoken.tcx\u001a\u0019google/protobuf/any.proto\"@\n\tTcxAction\u0012\u000e\n\u0006method\u0018\u0001 \u0001(\t\u0012#\n\u0005param\u0018\u0002 \u0001(\u000b2\u0014.google.protobuf.Any\",\n\u0008Response\u0012\u0011\n\tisSuccess\u0018\u0001 \u0001(\u0008\u0012\r\n\u0005error\u0018\u0002 \u0001(\t\"d\n\u0013InitTokenCoreXParam\u0012\u000f\n\u0007fileDir\u0018\u0001 \u0001(\t\u0012\u0015\n\rxpubCommonKey\u0018\u0002 \u0001(\t\u0012\u0014\n\u000cxpubCommonIv\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007isDebug\u0018\u0004 \u0001(\u0008\"|\n\u0015ExportPrivateKeyParam\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008password\u0018\u0002 \u0001(\t\u0012\u0011\n\tchainType\u0018\u0003 \u0001(\t\u0012\u000f\n\u0007network\u0018\u0004 \u0001(\t\u0012\u0013\n\u000bmainAddress\u0018\u0005 \u0001(\t\u0012\u000c\n\u0004path\u0018\u0006 \u0001(\t\".\n\u000eWalletKeyParam\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008password\u0018\u0002 \u0001(\tb\u0006proto3"

    .line 4636
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4653
    invoke-static {}, Lcom/google/protobuf/AnyProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4651
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4656
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_TcxAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4657
    new-instance v2, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v3, "Method"

    const-string v4, "Param"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v2, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_TcxAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4662
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_Response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4663
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "IsSuccess"

    const-string v3, "Error"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_Response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4668
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_InitTokenCoreXParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4669
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "FileDir"

    const-string v3, "XpubCommonKey"

    const-string v4, "XpubCommonIv"

    const-string v5, "IsDebug"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_InitTokenCoreXParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4674
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_ExportPrivateKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4675
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Id"

    const-string v3, "Password"

    const-string v4, "ChainType"

    const-string v5, "Network"

    const-string v6, "MainAddress"

    const-string v7, "Path"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_ExportPrivateKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4680
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_WalletKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 4681
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Id"

    const-string v3, "Password"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_WalletKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 4685
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
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_TcxAction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_TcxAction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_Response_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_Response_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_InitTokenCoreXParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_InitTokenCoreXParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_ExportPrivateKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_ExportPrivateKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_WalletKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->internal_static_org_consenlabs_imtoken_tcx_WalletKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 4631
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
