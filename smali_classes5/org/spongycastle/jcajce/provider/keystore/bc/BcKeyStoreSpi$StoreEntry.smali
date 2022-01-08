.class Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;
.super Ljava/lang/Object;
.source "BcKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field certChain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

.field type:I


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    const/4 v0, 0x4

    .line 132
    iput v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 133
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 134
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    const/16 p2, 0x14

    new-array v4, p2, [B

    .line 138
    iget-object p5, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 139
    iget-object p5, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 141
    iget-object p5, p1, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {p5}, Ljava/security/SecureRandom;->nextInt()I

    move-result p5

    and-int/lit16 p5, p5, 0x3ff

    add-int/lit16 v5, p5, 0x400

    .line 144
    new-instance p5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 145
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, p5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 147
    invoke-virtual {v6, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 148
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 149
    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    .line 151
    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 152
    new-instance p4, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p4, v6, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 154
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-direct {p2, p4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 156
    invoke-static {p1, p3, p2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$000(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 158
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    .line 160
    invoke-virtual {p5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    const/4 p1, 0x1

    .line 108
    iput p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 109
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 169
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 171
    iput p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 172
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 182
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    .line 184
    iput p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 185
    iput-object p5, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 186
    iput-object p6, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    const/4 p1, 0x3

    .line 119
    iput p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    .line 120
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    .line 122
    iput-object p4, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getObject([C)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const-string v0, "no match"

    if-eqz p1, :cond_0

    .line 208
    array-length v1, p1

    if-nez v1, :cond_1

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v2, v1, Ljava/security/Key;

    if-eqz v2, :cond_1

    return-object v1

    .line 216
    :cond_1
    iget v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 218
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 223
    :try_start_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v7, v1, [B

    .line 225
    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 227
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 229
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 231
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v2, v1}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    :try_start_1
    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$100(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 239
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 240
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 242
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    .line 244
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 246
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 248
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v4, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    move-object v7, v1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 250
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 256
    :try_start_3
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$100(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    move-object v7, v1

    move v8, v9

    goto :goto_1

    .line 260
    :catch_1
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 261
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 263
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    .line 265
    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 267
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 269
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v4, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x2

    move-object v6, p1

    move-object v7, v1

    move v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 271
    new-instance v4, Ljavax/crypto/CipherInputStream;

    invoke-direct {v4, v2, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 273
    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$100(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    .line 281
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 284
    array-length v3, v7

    invoke-virtual {v9, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 285
    invoke-virtual {v9, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 286
    invoke-virtual {v9, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 288
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    const-string v4, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 289
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v9, p1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 291
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 293
    iget-object v3, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->this$0:Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;

    invoke-static {v3, v2, p1}, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->access$000(Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 295
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    .line 297
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->obj:Ljava/lang/Object;

    return-object v2

    .line 303
    :cond_2
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 309
    :catch_2
    new-instance p1, Ljava/security/UnrecoverableKeyException;

    invoke-direct {p1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "forget something!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getType()I
    .locals 1

    .line 191
    iget v0, p0, Lorg/spongycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$StoreEntry;->type:I

    return v0
.end method
