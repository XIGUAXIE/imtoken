.class final enum Lorg/bitcoinj/utils/BtcAutoFormat$Style$1;
.super Lorg/bitcoinj/utils/BtcAutoFormat$Style;
.source "BtcAutoFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/utils/BtcAutoFormat$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/utils/BtcAutoFormat$Style;-><init>(Ljava/lang/String;ILorg/bitcoinj/utils/BtcAutoFormat$1;)V

    return-void
.end method


# virtual methods
.method apply(Ljava/text/DecimalFormat;)V
    .locals 3

    .line 90
    invoke-virtual {p1}, Ljava/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/utils/BtcFormat;->negify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00a4"

    const-string v2, "\u00a4\u00a4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "([#0.,E-])\u00a4\u00a4"

    const-string v2, "$1 \u00a4\u00a4"

    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u00a4\u00a4([0#.,E-])"

    const-string v2, "\u00a4\u00a4 $1"

    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method
