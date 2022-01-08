.class final enum Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;
.super Ljava/lang/Enum;
.source "ConsensusDocumentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SignatureVerifyStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

.field public static final enum STATUS_NEED_CERTS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

.field public static final enum STATUS_UNVERIFIED:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

.field public static final enum STATUS_VERIFIED:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    const/4 v1, 0x0

    const-string v2, "STATUS_UNVERIFIED"

    invoke-direct {v0, v2, v1}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;->STATUS_UNVERIFIED:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    const/4 v2, 0x1

    const-string v3, "STATUS_NEED_CERTS"

    invoke-direct {v0, v3, v2}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    new-instance v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    const/4 v3, 0x2

    const-string v4, "STATUS_VERIFIED"

    invoke-direct {v0, v4, v3}, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;->STATUS_VERIFIED:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    sget-object v5, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;->STATUS_UNVERIFIED:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;->STATUS_NEED_CERTS:Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;->$VALUES:[Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;
    .locals 1

    .line 27
    const-class v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;
    .locals 1

    .line 27
    sget-object v0, Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;->$VALUES:[Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/directory/consensus/ConsensusDocumentImpl$SignatureVerifyStatus;

    return-object v0
.end method
