.class public Lcom/fingerprints/service/FingerprintManager$GuidedResult;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GuidedResult"
.end annotation


# instance fields
.field public guidedAcceptance:I

.field public guidedImmobile:Z

.field public guidedRejectReasons:Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

.field public guidedStitched:Z

.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;IZZLcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->this$0:Lcom/fingerprints/service/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p2, p0, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedAcceptance:I

    .line 191
    iput-boolean p3, p0, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedStitched:Z

    .line 192
    iput-boolean p4, p0, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedImmobile:Z

    .line 193
    iput-object p5, p0, Lcom/fingerprints/service/FingerprintManager$GuidedResult;->guidedRejectReasons:Lcom/fingerprints/service/FingerprintManager$GuidedRejectReasons;

    return-void
.end method
