  # I2C Master Core Communication Protocol ASIC Flow
- This is a Repo for I2C Master Core Communication Protocol ASIC Flow.

# Features
We used the top-down approach, starting from the provided RTL and performed the following stages:
- 𝐒𝐲𝐧𝐭𝐡𝐞𝐬𝐢𝐬: Conversion of RTL to a gate-level netlist using Synopsys Design Compiler.
- 𝐅𝐨𝐫𝐦𝐚𝐥 𝐕𝐞𝐫𝐢𝐟𝐢𝐜𝐚𝐭𝐢𝐨𝐧: Ensured the netlist matched the RTL using Formality.
- 𝐁𝐚𝐜𝐤-𝐄𝐧𝐝 𝐒𝐭𝐚𝐠𝐞𝐬 (𝐏𝐧𝐑): Floorplanning, Power Planning, Cell Placement, CTS, and Routing using Synopsys IC Compiler II.
- 𝐒𝐭𝐚𝐭𝐢𝐜 𝐓𝐢𝐦𝐢𝐧𝐠 𝐀𝐧𝐚𝐥𝐲𝐬𝐢𝐬 (𝐒𝐓𝐀): Ensuring the design meets timing constraints using Synopsys PrimeTime. Resolving all hold violations.


# System Design
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/86cc9a3a-2099-4b9e-a83e-a9b6b2686b5e)



## The Top module RTL after synthesis
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/f979fdf1-9592-42c1-beb6-e0ff83d782b5)



## Timing Reports
- Worst-case Setup path after synthesis:
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/c1cdd07e-45d2-484a-aeb3-c3a5482d7677)

- Best-case Setup path after synthesis:
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/435a98a8-9c29-4a92-aeb1-5ab431bd4f4e)

## Clock Report
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/8731a578-c711-4c4b-9df8-17b342a85e2b)

## Area report after synthesis
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/9b24569e-f94a-428d-9ef0-864ea8a2e1b5)

## Power report after synthesis
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/9c5fbdf5-4e83-41c4-9931-7b47048c2f61)

## Formality
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/ed25383f-b523-4e54-8964-2c3564544c9c)

## PnR Flow
- Initial Placement

![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/b93b16f4-2212-4b22-a13a-9e64d7f35713)


- Worst-case setup path after initial placement
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/4547e71a-5eda-47b6-8c53-4f537f724a84)

- Worst-case hold path after initial placement
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/ed5c0936-b96b-4ac6-9f55-b336b363f1f3)

## Power Planning
- After Power Ring
  
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/8b990a66-e116-4c56-a6a2-ea822017b485)

- After Mesh of power straps
  
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/2da4ebf3-343d-4b5d-aef9-2e424486900f)

- After standard cell rail insertion
  
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/d6bed922-2f9d-4210-a4bb-1b4dfe29c119)

- Place Optimization
  
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/ff3ff7d6-51a5-4113-91c0-212c995e38f6)

## CTS
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/d84f90c8-bb3b-4e89-85b2-164b09aedeb2)

## Routing & Routing Optimization
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/8ead334d-c9cd-4c54-b927-06ee0daa501d)

## Final chip
![Picture](https://github.com/AyaRedaOsman/I2C-Master-Core-Communication-Protocol-ASIC-Flow/assets/102327986/fea7d5b6-6a89-4440-a738-db9889c67a8d)
