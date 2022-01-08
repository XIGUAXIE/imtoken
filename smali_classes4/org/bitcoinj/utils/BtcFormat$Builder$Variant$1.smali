.class final enum Lorg/bitcoinj/utils/BtcFormat$Builder$Variant$1;
.super Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;
.source "BtcFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/utils/BtcFormat$Builder$Variant;-><init>(Ljava/lang/String;ILorg/bitcoinj/utils/BtcFormat$1;)V

    return-void
.end method


# virtual methods
.method newInstance(Lorg/bitcoinj/utils/BtcFormat$Builder;)Lorg/bitcoinj/utils/BtcFormat;
    .locals 2

    .line 546
    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat$Builder;->access$100(Lorg/bitcoinj/utils/BtcFormat$Builder;)Lorg/bitcoinj/utils/BtcAutoFormat$Style;

    move-result-object v0

    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat$Builder;->access$200(Lorg/bitcoinj/utils/BtcFormat$Builder;)Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Lorg/bitcoinj/utils/BtcFormat$Builder;->access$300(Lorg/bitcoinj/utils/BtcFormat$Builder;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/utils/BtcFormat;->getInstance(Lorg/bitcoinj/utils/BtcAutoFormat$Style;Ljava/util/Locale;I)Lorg/bitcoinj/utils/BtcFormat;

    move-result-object p1

    return-object p1
.end method
