.class public Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;
.super Ljava/lang/Object;
.source "CustomTransactionSigner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/signers/CustomTransactionSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignatureAndKey"
.end annotation


# instance fields
.field public final pubKey:Lorg/bitcoinj/core/ECKey;

.field public final sig:Lorg/bitcoinj/core/ECKey$ECDSASignature;

.field final synthetic this$0:Lorg/bitcoinj/signers/CustomTransactionSigner;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/signers/CustomTransactionSigner;Lorg/bitcoinj/core/ECKey$ECDSASignature;Lorg/bitcoinj/core/ECKey;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;->this$0:Lorg/bitcoinj/signers/CustomTransactionSigner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;->sig:Lorg/bitcoinj/core/ECKey$ECDSASignature;

    .line 102
    iput-object p3, p0, Lorg/bitcoinj/signers/CustomTransactionSigner$SignatureAndKey;->pubKey:Lorg/bitcoinj/core/ECKey;

    return-void
.end method
