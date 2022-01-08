.class public interface abstract Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;
.super Ljava/lang/Object;
.source "TokenCoreXJna.java"

# interfaces
.implements Lcom/sun/jna/Library;


# static fields
.field public static final INSTANCE:Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    const-class v0, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;

    const-string v1, "tcx"

    invoke-static {v1, v0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;->INSTANCE:Lorg/consenlabs/imtoken/walletapi/TokenCoreXJna;

    return-void
.end method


# virtual methods
.method public abstract call_tcx_api(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract clear_err()V
.end method

.method public abstract free_const_string(Ljava/lang/String;)V
.end method

.method public abstract get_last_err_message()Ljava/lang/String;
.end method
