.class public Lorg/spongycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 43
    instance-of v1, v0, Ljava/security/cert/PKIXParameters;

    if-eqz v1, :cond_15

    .line 50
    instance-of v1, v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Lorg/spongycastle/x509/ExtendedPKIXParameters;

    goto :goto_0

    .line 56
    :cond_0
    check-cast v0, Ljava/security/cert/PKIXParameters;

    invoke-static {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getInstance(Ljava/security/cert/PKIXParameters;)Lorg/spongycastle/x509/ExtendedPKIXParameters;

    move-result-object v0

    .line 58
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 71
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v9

    .line 72
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 74
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_13

    .line 87
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v13

    const/4 v14, 0x1

    .line 95
    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v15
    :try_end_0
    .catch Lorg/spongycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v15, :cond_12

    add-int/lit8 v2, v10, 0x1

    .line 123
    new-array v7, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "2.5.29.32.0"

    .line 131
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v4, Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    const/16 v20, 0x0

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    const/16 v23, 0x0

    const-string v22, "2.5.29.32.0"

    move-object/from16 v16, v4

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/spongycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 136
    aget-object v3, v7, v12

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v6, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v6}, Lorg/spongycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 146
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 148
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isExplicitPolicyRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    move v3, v2

    .line 162
    :goto_2
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isAnyPolicyInhibited()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move v5, v2

    .line 176
    :goto_3
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->isPolicyMappingInhibited()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v2, 0x0

    .line 191
    :cond_4
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 196
    :try_start_1
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v18

    .line 197
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v19

    move-object/from16 v1, v18

    goto :goto_4

    .line 201
    :cond_5
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 214
    :goto_4
    :try_start_2
    invoke-static/range {v19 .. v19}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 222
    invoke-virtual {v14}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    .line 233
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lorg/spongycastle/util/Selector;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getTargetConstraints()Lorg/spongycastle/util/Selector;

    move-result-object v14

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-interface {v14, v11}, Lorg/spongycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_5

    .line 236
    :cond_6
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "Target certificate in certification path does not match targetConstraints."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v8, v12}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 243
    :cond_7
    :goto_5
    invoke-virtual {v0}, Lorg/spongycastle/x509/ExtendedPKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v11

    .line 244
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 245
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 247
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v22, v1

    move-object/from16 v1, v20

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v12}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    move-object/from16 v1, v22

    goto :goto_6

    :cond_8
    move-object/from16 v22, v1

    .line 252
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    move v12, v10

    move-object/from16 v20, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v4

    move v4, v2

    move v2, v5

    move v5, v1

    const/4 v1, 0x0

    :goto_7
    if-ltz v5, :cond_e

    sub-int v1, v10, v5

    .line 267
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v24, v18

    check-cast v24, Ljava/security/cert/X509Certificate;

    .line 268
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 p2, v1

    add-int/lit8 v1, v18, -0x1

    move-object/from16 v25, v9

    if-ne v5, v1, :cond_9

    const/4 v14, 0x1

    goto :goto_8

    :cond_9
    const/4 v14, 0x0

    :goto_8
    move/from16 v9, p2

    move-object/from16 v1, p1

    move/from16 p2, v2

    move-object v2, v0

    move-object/from16 v26, v15

    move v15, v3

    move v3, v5

    move-object/from16 v27, v13

    move v13, v4

    move-object/from16 v4, v20

    move-object/from16 v28, v11

    move v11, v5

    move v5, v14

    move-object v14, v6

    move-object/from16 v6, v22

    move-object/from16 v29, v7

    move-object/from16 v7, v19

    .line 274
    invoke-static/range {v1 .. v7}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;ILjava/security/PublicKey;ZLjavax/security/auth/x500/X500Principal;Ljava/security/cert/X509Certificate;)V

    .line 277
    invoke-static {v8, v11, v14}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V

    move v2, v11

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v29

    move/from16 v6, p2

    .line 279
    invoke-static/range {v1 .. v6}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/spongycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v1

    .line 282
    invoke-static {v8, v11, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v1

    .line 284
    invoke-static {v8, v11, v1, v15}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXPolicyNode;I)V

    if-eq v9, v10, :cond_d

    if-eqz v24, :cond_b

    .line 292
    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    goto :goto_9

    .line 294
    :cond_a
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Version 1 certificates can\'t be used as CA ones."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v8, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 298
    :cond_b
    :goto_9
    invoke-static {v8, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    move-object/from16 v5, v29

    .line 300
    invoke-static {v8, v11, v5, v1, v13}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;I)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v1

    .line 303
    invoke-static {v8, v11, v14}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/spongycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 306
    invoke-static {v8, v11, v15}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v2

    .line 307
    invoke-static {v8, v11, v13}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v3

    move/from16 v4, p2

    .line 308
    invoke-static {v8, v11, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 313
    invoke-static {v8, v11, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v2

    .line 314
    invoke-static {v8, v11, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v3

    .line 317
    invoke-static {v8, v11, v4}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 320
    invoke-static {v8, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 323
    invoke-static {v8, v11, v12}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v6

    .line 326
    invoke-static {v8, v11, v6}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v12

    .line 329
    invoke-static {v8, v11}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 331
    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 334
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 337
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 338
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 339
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 341
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 342
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 343
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 344
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 345
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 346
    sget-object v6, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 350
    :cond_c
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    :goto_a
    move-object/from16 v6, v28

    .line 354
    invoke-static {v8, v11, v7, v6}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 360
    invoke-static/range {v24 .. v24}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 365
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v11}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v9
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    .line 372
    invoke-static {v9}, Lorg/spongycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v13

    .line 374
    invoke-virtual {v13}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 376
    invoke-virtual {v13}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-object/from16 v17, v1

    move-object/from16 v22, v7

    move-object/from16 v20, v9

    move-object/from16 v19, v24

    move/from16 v30, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v30

    goto :goto_b

    :catch_0
    move-exception v0

    .line 369
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Next working key could not be retrieved."

    invoke-direct {v1, v2, v0, v8, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_d
    move/from16 v4, p2

    move-object/from16 v6, v28

    move-object/from16 v5, v29

    move-object/from16 v17, v1

    move v2, v4

    move v4, v13

    move v3, v15

    :goto_b
    add-int/lit8 v1, v11, -0x1

    move-object v7, v5

    move-object v11, v6

    move-object v6, v14

    move-object/from16 v9, v25

    move-object/from16 v15, v26

    move-object/from16 v13, v27

    const/4 v14, 0x1

    move v5, v1

    move-object/from16 v1, v24

    goto/16 :goto_7

    :cond_e
    move-object v6, v11

    move-object/from16 v27, v13

    move-object/from16 v26, v15

    move v15, v3

    move v11, v5

    move-object v5, v7

    .line 384
    invoke-static {v15, v1}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v2

    add-int/lit8 v4, v11, 0x1

    .line 386
    invoke-static {v8, v4, v2}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v9

    .line 395
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 399
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 401
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 402
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 403
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 405
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 406
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 407
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 408
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 410
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    sget-object v2, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 415
    :cond_f
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 418
    :goto_c
    invoke-static {v8, v4, v6, v3}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    move-object/from16 v24, v1

    move-object/from16 v1, p1

    move-object v2, v0

    move-object/from16 v3, v27

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    .line 420
    invoke-static/range {v1 .. v7}, Lorg/spongycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lorg/spongycastle/x509/ExtendedPKIXParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/spongycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/spongycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    if-gtz v9, :cond_11

    if-eqz v0, :cond_10

    goto :goto_d

    .line 428
    :cond_10
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Path processing failed on policy."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v8, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 425
    :cond_11
    :goto_d
    new-instance v1, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v3, v26

    invoke-direct {v1, v3, v0, v2}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v1

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 218
    new-instance v0, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v8, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_2
    move-exception v0

    .line 207
    new-instance v1, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Subject of trust anchor could not be (re)encoded."

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v8, v3}, Lorg/spongycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_12
    const/4 v3, -0x1

    .line 105
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v8, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_3
    move-exception v0

    move-object/from16 v25, v9

    .line 100
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v0, v8, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 76
    :cond_13
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v8, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 60
    :cond_14
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_15
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
