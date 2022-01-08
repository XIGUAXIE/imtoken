.class Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;
.super Ljava/lang/Object;
.source "BtcFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/utils/BtcFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleMatcher"
.end annotation


# instance fields
.field public pattern:Ljava/util/regex/Pattern;

.field public scale:I

.field final synthetic this$0:Lorg/bitcoinj/utils/BtcFormat;


# direct methods
.method constructor <init>(Lorg/bitcoinj/utils/BtcFormat;Ljava/util/regex/Pattern;I)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;->this$0:Lorg/bitcoinj/utils/BtcFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;->pattern:Ljava/util/regex/Pattern;

    iput p3, p0, Lorg/bitcoinj/utils/BtcFormat$ScaleMatcher;->scale:I

    return-void
.end method
