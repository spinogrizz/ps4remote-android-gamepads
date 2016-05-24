.class Lcom/playstation/remoteplay/GamepadMappings;
.super Ljava/lang/Object;
.source "GamepadMappings.java"


# static fields
.field private static final MICROSOFT_XBOX_PAD_DEVICE_NAME:Ljava/lang/String; = "Microsoft X-Box 360 pad"

.field private static final NVIDIA_SHIELD_DEVICE_NAME_PREFIX:Ljava/lang/String; = "NVIDIA Corporation NVIDIA Controller"

.field private static final PS3_SIXAXIS_DEVICE_NAME:Ljava/lang/String; = "Sony PLAYSTATION(R)3 Controller"

.field private static final PS4_DUALSHOCK4_DEVICE_NAME:Ljava/lang/String; = "Sony Computer Entertainment Wireless Controller"

.field private static final SAMSUNG_EI_GP20_DEVICE_NAME:Ljava/lang/String; = "Samsung Game Pad EI-GP20"

.field private static ps4KeylayoutExists:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/playstation/remoteplay/GamepadMappings;->findPS4KeylayoutFile()Z

    .line 29
    move-result v0

    .line 32
    .local v0, "v0":Z
    sput-boolean v0, Lcom/playstation/remoteplay/GamepadMappings;->ps4KeylayoutExists:Z

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    .local p0, "p0":Ljava/lang/Object;
    return-void
.end method

.method private static findPS4KeylayoutFile()Z
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    .line 57
    .local v0, "v0":Ljava/lang/Object;
    const-string v1, "/system/usr/keylayout/Vendor_054c_Product_05c4.kl"

    .line 60
    .local v1, "v1":Ljava/lang/Object;
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "v0":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 65
    move-result v0

    .line 68
    .local v0, "v0":Z
    return v0
.end method

.method private static mapBrakeAndGasToTriggers(Ljava/util/EnumMap;[F)V
    .locals 4
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 88
    const/16 v2, 0x17

    .line 91
    .local v2, "v2":B
    aget v0, p1, v2

    .line 96
    .local v0, "v0":I
    const/16 v2, 0x16

    .line 98
    aget v1, p1, v2

    .line 103
    .local v1, "v1":I
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_TRIGGER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 106
    .local v2, "v2":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    move-result-object v3

    .line 111
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_TRIGGER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 116
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 118
    move-result-object v3

    .line 120
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method private static mapCommonDpadButtons(Ljava/util/EnumMap;[F)V
    .locals 6
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 143
    const/16 v4, 0x14

    .line 146
    .local v4, "v4":B
    aget v0, p1, v4

    .line 151
    .local v0, "v0":I
    const/16 v4, 0x13

    .line 153
    aget v1, p1, v4

    .line 158
    .local v1, "v1":I
    const/16 v4, 0x15

    .line 160
    aget v2, p1, v4

    .line 165
    .local v2, "v2":I
    const/16 v4, 0x16

    .line 167
    aget v3, p1, v4

    .line 172
    .local v3, "v3":I
    sget-object v4, Lcom/playstation/remoteplay/ButtonIndex;->DPAD_DOWN:Lcom/playstation/remoteplay/ButtonIndex;

    .line 175
    .local v4, "v4":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    move-result-object v5

    .line 180
    .local v5, "v5":Ljava/lang/Object;
    invoke-virtual {p0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v4, Lcom/playstation/remoteplay/ButtonIndex;->DPAD_UP:Lcom/playstation/remoteplay/ButtonIndex;

    .line 185
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 187
    move-result-object v5

    .line 189
    invoke-virtual {p0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v4, Lcom/playstation/remoteplay/ButtonIndex;->DPAD_LEFT:Lcom/playstation/remoteplay/ButtonIndex;

    .line 194
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 196
    move-result-object v5

    .line 198
    invoke-virtual {p0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v4, Lcom/playstation/remoteplay/ButtonIndex;->DPAD_RIGHT:Lcom/playstation/remoteplay/ButtonIndex;

    .line 203
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 205
    move-result-object v5

    .line 207
    invoke-virtual {p0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method

.method private static mapCommonShoulderButtons(Ljava/util/EnumMap;[F)V
    .locals 4
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 230
    const/16 v2, 0x66

    .line 233
    .local v2, "v2":B
    aget v0, p1, v2

    .line 238
    .local v0, "v0":I
    const/16 v2, 0x67

    .line 240
    aget v1, p1, v2

    .line 245
    .local v1, "v1":I
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_SHOULDER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 248
    .local v2, "v2":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 250
    move-result-object v3

    .line 253
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_SHOULDER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 258
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 260
    move-result-object v3

    .line 262
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-void
.end method

.method private static mapCommonStartSelectMetaButtons(Ljava/util/EnumMap;[F)V
    .locals 5
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 285
    const/16 v3, 0x6c

    .line 288
    .local v3, "v3":B
    aget v0, p1, v3

    .line 293
    .local v0, "v0":I
    const/16 v3, 0x6d

    .line 295
    aget v1, p1, v3

    .line 300
    .local v1, "v1":I
    const/16 v3, 0x6e

    .line 302
    aget v2, p1, v3

    .line 307
    .local v2, "v2":I
    sget-object v3, Lcom/playstation/remoteplay/ButtonIndex;->START:Lcom/playstation/remoteplay/ButtonIndex;

    .line 310
    .local v3, "v3":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 312
    move-result-object v4

    .line 315
    .local v4, "v4":Ljava/lang/Object;
    invoke-virtual {p0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v3, Lcom/playstation/remoteplay/ButtonIndex;->SELECT:Lcom/playstation/remoteplay/ButtonIndex;

    .line 320
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 322
    move-result-object v4

    .line 324
    invoke-virtual {p0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v3, Lcom/playstation/remoteplay/ButtonIndex;->META:Lcom/playstation/remoteplay/ButtonIndex;

    .line 329
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 331
    move-result-object v4

    .line 333
    invoke-virtual {p0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    return-void
.end method

.method private static mapCommonThumbstickButtons(Ljava/util/EnumMap;[F)V
    .locals 4
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 356
    const/16 v2, 0x6a

    .line 359
    .local v2, "v2":B
    aget v0, p1, v2

    .line 364
    .local v0, "v0":I
    const/16 v2, 0x6b

    .line 366
    aget v1, p1, v2

    .line 371
    .local v1, "v1":I
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_THUMBSTICK:Lcom/playstation/remoteplay/ButtonIndex;

    .line 374
    .local v2, "v2":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 376
    move-result-object v3

    .line 379
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_THUMBSTICK:Lcom/playstation/remoteplay/ButtonIndex;

    .line 384
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 386
    move-result-object v3

    .line 388
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method private static mapCommonXYABButtons(Ljava/util/EnumMap;[F)V
    .locals 6
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 411
    const/16 v4, 0x60

    .line 414
    .local v4, "v4":B
    aget v0, p1, v4

    .line 419
    .local v0, "v0":I
    const/16 v4, 0x61

    .line 421
    aget v1, p1, v4

    .line 426
    .local v1, "v1":I
    const/16 v4, 0x63

    .line 428
    aget v2, p1, v4

    .line 433
    .local v2, "v2":I
    const/16 v4, 0x64

    .line 435
    aget v3, p1, v4

    .line 440
    .local v3, "v3":I
    sget-object v4, Lcom/playstation/remoteplay/ButtonIndex;->PRIMARY:Lcom/playstation/remoteplay/ButtonIndex;

    .line 443
    .local v4, "v4":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 445
    move-result-object v5

    .line 448
    .local v5, "v5":Ljava/lang/Object;
    invoke-virtual {p0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v4, Lcom/playstation/remoteplay/ButtonIndex;->SECONDARY:Lcom/playstation/remoteplay/ButtonIndex;

    .line 453
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 455
    move-result-object v5

    .line 457
    invoke-virtual {p0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v4, Lcom/playstation/remoteplay/ButtonIndex;->TERTIARY:Lcom/playstation/remoteplay/ButtonIndex;

    .line 462
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 464
    move-result-object v5

    .line 466
    invoke-virtual {p0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v4, Lcom/playstation/remoteplay/ButtonIndex;->QUATERNARY:Lcom/playstation/remoteplay/ButtonIndex;

    .line 471
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 473
    move-result-object v5

    .line 475
    invoke-virtual {p0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method private static mapHatAxisToDpadButtons(Ljava/util/EnumMap;[F)V
    .locals 4
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 498
    const/16 v2, 0xf

    .line 501
    .local v2, "v2":B
    aget v0, p1, v2

    .line 506
    .local v0, "v0":I
    const/16 v2, 0x10

    .line 508
    aget v1, p1, v2

    .line 513
    .local v1, "v1":I
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->DPAD_LEFT:Lcom/playstation/remoteplay/ButtonIndex;

    .line 516
    .local v2, "v2":Ljava/lang/Object;
    invoke-static {v0}, Lcom/playstation/remoteplay/GamepadMappings;->negativeAxisValueAsButton(F)F

    .line 518
    move-result v3

    .line 521
    .local v3, "v3":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 523
    move-result-object v3

    .line 526
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->DPAD_RIGHT:Lcom/playstation/remoteplay/ButtonIndex;

    .line 531
    invoke-static {v0}, Lcom/playstation/remoteplay/GamepadMappings;->positiveAxisValueAsButton(F)F

    .line 533
    move-result v3

    .line 536
    .local v3, "v3":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 538
    move-result-object v3

    .line 541
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->DPAD_UP:Lcom/playstation/remoteplay/ButtonIndex;

    .line 546
    invoke-static {v1}, Lcom/playstation/remoteplay/GamepadMappings;->negativeAxisValueAsButton(F)F

    .line 548
    move-result v3

    .line 551
    .local v3, "v3":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 553
    move-result-object v3

    .line 556
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->DPAD_DOWN:Lcom/playstation/remoteplay/ButtonIndex;

    .line 561
    invoke-static {v1}, Lcom/playstation/remoteplay/GamepadMappings;->positiveAxisValueAsButton(F)F

    .line 563
    move-result v3

    .line 566
    .local v3, "v3":F
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 568
    move-result-object v3

    .line 571
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    return-void
.end method

.method private static mapPS3SixAxisGamepad(Ljava/util/EnumMap;[F[F)V
    .locals 0
    .param p1, "arrf"    # [F
    .param p2, "arrf2"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F[F)V"
        }
    .end annotation

    .prologue
    .line 595
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonXYABButtons(Ljava/util/EnumMap;[F)V

    .line 598
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonShoulderButtons(Ljava/util/EnumMap;[F)V

    .line 601
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonThumbstickButtons(Ljava/util/EnumMap;[F)V

    .line 604
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonDpadButtons(Ljava/util/EnumMap;[F)V

    .line 607
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonStartSelectMetaButtons(Ljava/util/EnumMap;[F)V

    .line 610
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapTriggerAxes(Ljava/util/EnumMap;[F)V

    .line 613
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapXYAxes(Ljava/util/EnumMap;[F)V

    .line 616
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapZAndRZAxesToRightStick(Ljava/util/EnumMap;[F)V

    .line 619
    return-void
.end method

.method private static mapPS4DualShock4Gamepad(Ljava/util/EnumMap;[F[F)V
    .locals 15
    .param p1, "arrf"    # [F
    .param p2, "arrf2"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F[F)V"
        }
    .end annotation

    .prologue
    .line 640
    move-object/from16 v0, p2

    .line 643
    .local v0, "v0":Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/playstation/remoteplay/GamepadMappings;->mapHatAxisToDpadButtons(Ljava/util/EnumMap;[F)V

    .line 646
    move-object/from16 v0, p2

    .line 648
    invoke-static {p0, v0}, Lcom/playstation/remoteplay/GamepadMappings;->mapXYAxes(Ljava/util/EnumMap;[F)V

    .line 651
    move-object/from16 v0, p2

    .line 653
    invoke-static {p0, v0}, Lcom/playstation/remoteplay/GamepadMappings;->mapZAndRZAxesToRightStick(Ljava/util/EnumMap;[F)V

    .line 656
    sget-boolean v13, Lcom/playstation/remoteplay/GamepadMappings;->ps4KeylayoutExists:Z

    .line 659
    .local v13, "v13":Z
    if-eqz v13, :cond_0

    .line 662
    invoke-static/range {p0 .. p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonXYABButtons(Ljava/util/EnumMap;[F)V

    .line 665
    invoke-static/range {p0 .. p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonShoulderButtons(Ljava/util/EnumMap;[F)V

    .line 668
    invoke-static/range {p0 .. p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonThumbstickButtons(Ljava/util/EnumMap;[F)V

    .line 671
    invoke-static/range {p0 .. p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapSpecialStartSelectMetaButtons(Ljava/util/EnumMap;[F)V

    .line 674
    move-object/from16 v0, p2

    .line 676
    invoke-static {p0, v0}, Lcom/playstation/remoteplay/GamepadMappings;->mapBrakeAndGasToTriggers(Ljava/util/EnumMap;[F)V

    .line 681
    .end local v13    # "v13":Z
    :goto_0
    return-void

    .line 686
    .local v13, "v13":Z
    :cond_0
    const/16 v13, 0x61

    .line 689
    .local v13, "v13":B
    aget v1, p1, v13

    .line 694
    .local v1, "v1":I
    const/16 v13, 0x62

    .line 696
    aget v5, p1, v13

    .line 701
    .local v5, "v5":I
    const/16 v13, 0x60

    .line 703
    aget v6, p1, v13

    .line 708
    .local v6, "v6":I
    const/16 v13, 0x63

    .line 710
    aget v7, p1, v13

    .line 715
    .local v7, "v7":I
    const/16 v13, 0x64

    .line 717
    aget v8, p1, v13

    .line 722
    .local v8, "v8":I
    const/16 v13, 0x65

    .line 724
    aget v9, p1, v13

    .line 729
    .local v9, "v9":I
    const/16 v13, 0x6d

    .line 731
    aget v10, p1, v13

    .line 736
    .local v10, "v10":I
    const/16 v13, 0x6c

    .line 738
    aget v11, p1, v13

    .line 743
    .local v11, "v11":I
    const/16 v13, 0x68

    .line 745
    aget v12, p1, v13

    .line 750
    .local v12, "v12":I
    const/16 v13, 0x69

    .line 752
    aget v2, p1, v13

    .line 757
    .local v2, "v2":I
    const/16 v13, 0x6a

    .line 759
    aget v3, p1, v13

    .line 764
    .local v3, "v3":I
    const/16 v13, 0x6e

    .line 766
    aget v4, p1, v13

    .line 771
    .local v4, "v4":I
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->PRIMARY:Lcom/playstation/remoteplay/ButtonIndex;

    .line 774
    .local v13, "v13":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 776
    move-result-object v14

    .line 779
    .local v14, "v14":Ljava/lang/Object;
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->SECONDARY:Lcom/playstation/remoteplay/ButtonIndex;

    .line 784
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 786
    move-result-object v14

    .line 788
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->TERTIARY:Lcom/playstation/remoteplay/ButtonIndex;

    .line 793
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 795
    move-result-object v14

    .line 797
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->QUATERNARY:Lcom/playstation/remoteplay/ButtonIndex;

    .line 802
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 804
    move-result-object v14

    .line 806
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_SHOULDER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 811
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 813
    move-result-object v14

    .line 815
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_SHOULDER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 820
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 822
    move-result-object v14

    .line 824
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_THUMBSTICK:Lcom/playstation/remoteplay/ButtonIndex;

    .line 829
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 831
    move-result-object v14

    .line 833
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_THUMBSTICK:Lcom/playstation/remoteplay/ButtonIndex;

    .line 838
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 840
    move-result-object v14

    .line 842
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->SELECT:Lcom/playstation/remoteplay/ButtonIndex;

    .line 847
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 849
    move-result-object v14

    .line 851
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->START:Lcom/playstation/remoteplay/ButtonIndex;

    .line 856
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 858
    move-result-object v14

    .line 860
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->META:Lcom/playstation/remoteplay/ButtonIndex;

    .line 865
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 867
    move-result-object v14

    .line 869
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-object v13, Lcom/playstation/remoteplay/ButtonIndex;->PS_BUTTON:Lcom/playstation/remoteplay/ButtonIndex;

    .line 874
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 876
    move-result-object v14

    .line 878
    invoke-virtual {p0, v13, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    move-object/from16 v0, p2

    .line 883
    invoke-static {p0, v0}, Lcom/playstation/remoteplay/GamepadMappings;->mapRXAndRYAxesToTriggers(Ljava/util/EnumMap;[F)V

    .line 885
    goto/16 :goto_0
.end method

.method private static mapRXAndRYAxesToRightStick(Ljava/util/EnumMap;[F)V
    .locals 2
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 905
    sget-object v0, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_STICK_X:Lcom/playstation/remoteplay/ButtonIndex;

    .line 908
    .local v0, "v0":Ljava/lang/Object;
    const/16 v1, 0xc

    .line 911
    .local v1, "v1":B
    aget v1, p1, v1

    .line 914
    .local v1, "v1":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 916
    move-result-object v1

    .line 919
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v0, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_STICK_Y:Lcom/playstation/remoteplay/ButtonIndex;

    .line 924
    const/16 v1, 0xd

    .line 927
    .local v1, "v1":B
    aget v1, p1, v1

    .line 930
    .local v1, "v1":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 932
    move-result-object v1

    .line 935
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    return-void
.end method

.method private static mapRXAndRYAxesToTriggers(Ljava/util/EnumMap;[F)V
    .locals 4
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 958
    const/16 v2, 0xc

    .line 961
    .local v2, "v2":B
    aget v0, p1, v2

    .line 966
    .local v0, "v0":I
    const/16 v2, 0xd

    .line 968
    aget v1, p1, v2

    .line 973
    .local v1, "v1":I
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_TRIGGER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 976
    .local v2, "v2":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 978
    move-result-object v3

    .line 981
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_TRIGGER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 986
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 988
    move-result-object v3

    .line 990
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    return-void
.end method

.method private static mapSamsungEIGP20Gamepad(Ljava/util/EnumMap;[F[F)V
    .locals 0
    .param p1, "arrf"    # [F
    .param p2, "arrf2"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F[F)V"
        }
    .end annotation

    .prologue
    .line 1014
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonXYABButtons(Ljava/util/EnumMap;[F)V

    .line 1017
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonShoulderButtons(Ljava/util/EnumMap;[F)V

    .line 1020
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonThumbstickButtons(Ljava/util/EnumMap;[F)V

    .line 1023
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonStartSelectMetaButtons(Ljava/util/EnumMap;[F)V

    .line 1026
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapHatAxisToDpadButtons(Ljava/util/EnumMap;[F)V

    .line 1029
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapXYAxes(Ljava/util/EnumMap;[F)V

    .line 1032
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapRXAndRYAxesToRightStick(Ljava/util/EnumMap;[F)V

    .line 1035
    return-void
.end method

.method private static mapShieldGamepad(Ljava/util/EnumMap;[F[F)V
    .locals 0
    .param p1, "arrf"    # [F
    .param p2, "arrf2"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F[F)V"
        }
    .end annotation

    .prologue
    .line 1056
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonXYABButtons(Ljava/util/EnumMap;[F)V

    .line 1059
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonShoulderButtons(Ljava/util/EnumMap;[F)V

    .line 1062
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonThumbstickButtons(Ljava/util/EnumMap;[F)V

    .line 1065
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonStartSelectMetaButtons(Ljava/util/EnumMap;[F)V

    .line 1068
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapTriggerAxes(Ljava/util/EnumMap;[F)V

    .line 1071
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapHatAxisToDpadButtons(Ljava/util/EnumMap;[F)V

    .line 1074
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapXYAxes(Ljava/util/EnumMap;[F)V

    .line 1077
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapZAndRZAxesToRightStick(Ljava/util/EnumMap;[F)V

    .line 1080
    return-void
.end method

.method private static mapSpecialStartSelectMetaButtons(Ljava/util/EnumMap;[F)V
    .locals 5
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 1100
    const/16 v3, 0x6c

    .line 1103
    .local v3, "v3":B
    aget v0, p1, v3

    .line 1108
    .local v0, "v0":I
    const/4 v3, 0x4

    .line 1110
    aget v1, p1, v3

    .line 1115
    .local v1, "v1":I
    const/16 v3, 0x6d

    .line 1117
    aget v2, p1, v3

    .line 1122
    .local v2, "v2":I
    sget-object v3, Lcom/playstation/remoteplay/ButtonIndex;->START:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1125
    .local v3, "v3":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1127
    move-result-object v4

    .line 1130
    .local v4, "v4":Ljava/lang/Object;
    invoke-virtual {p0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v3, Lcom/playstation/remoteplay/ButtonIndex;->SELECT:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1135
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1137
    move-result-object v4

    .line 1139
    invoke-virtual {p0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v3, Lcom/playstation/remoteplay/ButtonIndex;->META:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1144
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1146
    move-result-object v4

    .line 1148
    invoke-virtual {p0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    return-void
.end method

.method public static mapToStandardGamepad(Ljava/util/EnumMap;[F[FLjava/lang/String;)Z
    .locals 2
    .param p1, "arrf"    # [F
    .param p2, "arrf2"    # [F
    .param p3, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F[F",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1174
    const/4 v0, 0x1

    .line 1178
    .local v0, "v0":I
    const-string v1, "NVIDIA Corporation NVIDIA Controller"

    .line 1181
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1183
    move-result v1

    .line 1186
    .local v1, "v1":Z
    if-eqz v1, :cond_0

    .line 1189
    invoke-static {p0, p2, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapShieldGamepad(Ljava/util/EnumMap;[F[F)V

    .line 1194
    .local v0, "v0":Z
    :goto_0
    return v0

    .line 1199
    .local v0, "v0":I
    :cond_0
    const-string v1, "Microsoft X-Box 360 pad"

    .line 1202
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1204
    move-result v1

    .line 1207
    .local v1, "v1":Z
    if-eqz v1, :cond_1

    .line 1210
    invoke-static {p0, p2, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapXBox360Gamepad(Ljava/util/EnumMap;[F[F)V

    .line 1212
    goto :goto_0

    .line 1216
    :cond_1
    const-string v1, "Sony PLAYSTATION(R)3 Controller"

    .line 1219
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1221
    move-result v1

    .line 1224
    .local v1, "v1":Z
    if-eqz v1, :cond_2

    .line 1227
    invoke-static {p0, p2, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapPS3SixAxisGamepad(Ljava/util/EnumMap;[F[F)V

    .line 1229
    goto :goto_0

    .line 1233
    :cond_2
    const-string v1, "Sony Computer Entertainment Wireless Controller"

    .line 1236
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1238
    move-result v1

    .line 1241
    .local v1, "v1":Z
    if-eqz v1, :cond_3

    .line 1244
    invoke-static {p0, p2, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapPS4DualShock4Gamepad(Ljava/util/EnumMap;[F[F)V

    .line 1246
    goto :goto_0

    .line 1250
    :cond_3
    const-string v1, "Wireless Controller"

    .line 1253
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1255
    move-result v1

    .line 1258
    .local v1, "v1":Z
    if-eqz v1, :cond_4

    .line 1261
    invoke-static {p0, p2, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapPS4DualShock4Gamepad(Ljava/util/EnumMap;[F[F)V

    .line 1263
    goto :goto_0

    .line 1267
    :cond_4
    const-string v1, "Samsung Game Pad EI-GP20"

    .line 1270
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1272
    move-result v1

    .line 1275
    .local v1, "v1":Z
    if-eqz v1, :cond_5

    .line 1278
    invoke-static {p0, p2, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapSamsungEIGP20Gamepad(Ljava/util/EnumMap;[F[F)V

    .line 1280
    goto :goto_0

    .line 1284
    :cond_5
    invoke-static {p0, p2, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapUnknownGamepad(Ljava/util/EnumMap;[F[F)V

    .line 1287
    const/4 v0, 0x0

    .line 1290
    .local v0, "v0":Ljava/lang/Object;
    goto :goto_0
.end method

.method private static mapTriggerAxes(Ljava/util/EnumMap;[F)V
    .locals 4
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 1310
    const/16 v2, 0x11

    .line 1313
    .local v2, "v2":B
    aget v0, p1, v2

    .line 1318
    .local v0, "v0":I
    const/16 v2, 0x12

    .line 1320
    aget v1, p1, v2

    .line 1325
    .local v1, "v1":I
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_TRIGGER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1328
    .local v2, "v2":Ljava/lang/Object;
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1330
    move-result-object v3

    .line 1333
    .local v3, "v3":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    sget-object v2, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_TRIGGER:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1338
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1340
    move-result-object v3

    .line 1342
    invoke-virtual {p0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    return-void
.end method

.method private static mapUnknownGamepad(Ljava/util/EnumMap;[F[F)V
    .locals 0
    .param p1, "arrf"    # [F
    .param p2, "arrf2"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F[F)V"
        }
    .end annotation

    .prologue
    .line 1366
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonXYABButtons(Ljava/util/EnumMap;[F)V

    .line 1369
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonShoulderButtons(Ljava/util/EnumMap;[F)V

    .line 1372
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonThumbstickButtons(Ljava/util/EnumMap;[F)V

    .line 1375
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonStartSelectMetaButtons(Ljava/util/EnumMap;[F)V

    .line 1378
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapTriggerAxes(Ljava/util/EnumMap;[F)V

    .line 1381
    invoke-static {p0, p1}, Lcom/playstation/remoteplay/GamepadMappings;->mapCommonDpadButtons(Ljava/util/EnumMap;[F)V

    .line 1384
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapXYAxes(Ljava/util/EnumMap;[F)V

    .line 1387
    invoke-static {p0, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapRXAndRYAxesToRightStick(Ljava/util/EnumMap;[F)V

    .line 1390
    return-void
.end method

.method private static mapXBox360Gamepad(Ljava/util/EnumMap;[F[F)V
    .locals 0
    .param p1, "arrf"    # [F
    .param p2, "arrf2"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F[F)V"
        }
    .end annotation

    .prologue
    .line 1411
    invoke-static {p0, p1, p2}, Lcom/playstation/remoteplay/GamepadMappings;->mapShieldGamepad(Ljava/util/EnumMap;[F[F)V

    .line 1414
    return-void
.end method

.method private static mapXYAxes(Ljava/util/EnumMap;[F)V
    .locals 2
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 1434
    sget-object v0, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_STICK_X:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1437
    .local v0, "v0":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1440
    .local v1, "v1":Ljava/lang/Object;
    aget v1, p1, v1

    .line 1443
    .local v1, "v1":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1445
    move-result-object v1

    .line 1448
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1451
    sget-object v0, Lcom/playstation/remoteplay/ButtonIndex;->LEFT_STICK_Y:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1453
    const/4 v1, 0x1

    .line 1456
    .local v1, "v1":I
    aget v1, p1, v1

    .line 1459
    .local v1, "v1":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1461
    move-result-object v1

    .line 1464
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1467
    return-void
.end method

.method private static mapZAndRZAxesToRightStick(Ljava/util/EnumMap;[F)V
    .locals 2
    .param p1, "arrf"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/playstation/remoteplay/ButtonIndex;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .prologue
    .line 1487
    sget-object v0, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_STICK_X:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1490
    .local v0, "v0":Ljava/lang/Object;
    const/16 v1, 0xb

    .line 1493
    .local v1, "v1":B
    aget v1, p1, v1

    .line 1496
    .local v1, "v1":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1498
    move-result-object v1

    .line 1501
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    sget-object v0, Lcom/playstation/remoteplay/ButtonIndex;->RIGHT_STICK_Y:Lcom/playstation/remoteplay/ButtonIndex;

    .line 1506
    const/16 v1, 0xe

    .line 1509
    .local v1, "v1":B
    aget v1, p1, v1

    .line 1512
    .local v1, "v1":I
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1514
    move-result-object v1

    .line 1517
    .local v1, "v1":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    return-void
.end method

.method private static negativeAxisValueAsButton(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1529
    const/high16 v0, -0x41000000    # -0.5f

    .line 1532
    .local v0, "v0":I
    cmpg-float v0, p0, v0

    .line 1535
    .local v0, "v0":B
    if-gez v0, :cond_0

    .line 1538
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1543
    .local v0, "v0":I
    :goto_0
    return v0

    .line 1547
    .local v0, "v0":B
    :cond_0
    const/4 v0, 0x0

    .line 1550
    .local v0, "v0":Ljava/lang/Object;
    goto :goto_0
.end method

.method private static positiveAxisValueAsButton(F)F
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 1559
    const/high16 v0, 0x3f000000    # 0.5f

    .line 1562
    .local v0, "v0":I
    cmpl-float v0, p0, v0

    .line 1565
    .local v0, "v0":B
    if-lez v0, :cond_0

    .line 1568
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1573
    .local v0, "v0":I
    :goto_0
    return v0

    .line 1577
    .local v0, "v0":B
    :cond_0
    const/4 v0, 0x0

    .line 1580
    .local v0, "v0":Ljava/lang/Object;
    goto :goto_0
.end method
